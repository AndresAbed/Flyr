class Clubevent < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :club
  has_many :clublistusers
  has_many :clublists, dependent: :destroy

  # Paperclip config
  has_attached_file :image, 
  :url  => "/assets/clubevents/:id/:style/:basename.:extension"
  validates_attachment_presence :image
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :club_logo, 
  url: "/assets/clubevents/:id/:style/:basename.:extension"
  validates_attachment :club_logo, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }  


  # FriendlyId config
  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end

  #Geocoder
  geocoded_by :address

  # Url for pending events
  def url
    Rails.application.routes.url_helpers.club_clubevent_path(club_id, slug)
  end

  # Worker methods
  def is_time?
    Date.today - 1.day == self.date
  end

  def end_event
    events = Clubevent.where(ended: false, approved: true)

    events.each do |e|
      if e.is_time?
        e.update_attribute(:ended, true)
      end
    end
  end

  # Search config
  def self.search(search)
    if search
      where('name ILIKE ? OR age ILIKE ? OR address ILIKE ?', 
        "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Clubevent.all
    end
  end
end
