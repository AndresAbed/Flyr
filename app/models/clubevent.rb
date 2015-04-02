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

  def url
    Rails.application.routes.url_helpers.club_clubevent_path(club_id, id)
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

  # Geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
