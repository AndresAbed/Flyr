class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence:true
  validates :description, presence: true, length: {minimum: 140}

  has_many :listusers
  has_many :lists, dependent: :destroy
  
  # Paperclip config
  has_attached_file :image, 
  :url  => "/assets/events/:id/:style/:basename.:extension"
  validates_attachment_presence :image
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :event_logo, 
  :url  => "/assets/events/:id/:style/:basename.:extension"
  validates_attachment_presence :event_logo
  validates_attachment :event_logo, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


  # FriendlyId config
  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end

  # Search config
  def self.search(search)
    if search
      where('name ILIKE ? OR age ILIKE ? OR address ILIKE ?', 
        "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Event.all
    end
  end

  # Geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
