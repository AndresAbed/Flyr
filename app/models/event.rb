class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence:true
  validates :description, presence: true, length: {minimum: 140}

  has_many :listusers
  has_many :lists, dependent: :destroy
  
  # Paperclip config
  has_attached_file :image, 
  url: "/images/events/:id/:style/:basename.:extension"
  validates_attachment_presence :image
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :event_logo, 
  url: "/images/events/:id/:style/:basename.:extension"
  validates_attachment_presence :event_logo
  validates_attachment :event_logo, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


  # FriendlyId config
  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end

  #Geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  # Search config
  def self.search(search)
    if search
      where('name ILIKE ? OR age ILIKE ? OR address ILIKE ?', 
        "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  # Worker methods
  def is_time?
    Date.today - 1.day == self.date
  end

  def end_event
    events = Event.where(ended: false)

    events.each do |e|
      if e.is_time?
        e.update_attribute(ended: true)
      end
    end
  end
end
