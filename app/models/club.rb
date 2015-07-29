class Club < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

  has_many :users
  has_many :musics, dependent: :destroy
  has_many :features, dependent: :destroy
  has_many :clubevents, dependent: :destroy
  has_many :clublists
  has_many :clubimages, dependent: :destroy

  # Paperclip config
  has_attached_file :logo, 
  url: "/images/clubs/:id/:style/:basename.:extension"
  validates_attachment_presence :logo
  validates_attachment :logo, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  #Geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  # FriendlyId config
  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end

  after_save :update_events_addresses

  def update_events_addresses
    if address_changed?
      clubevents.where(ended: false)
                .update_all({
                  address: address,
                  latitude: latitude,
                  longitude: longitude
                  })
    end
  end

  # Search config
  def self.search(search)
    if search
      where('name ILIKE ? OR address ILIKE ?', "%#{search}%", "%#{search}%")
    else
      Club.all
    end
  end
end
