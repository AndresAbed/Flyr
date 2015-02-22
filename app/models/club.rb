class Club < ActiveRecord::Base
  has_many :features, dependent: :destroy
  has_many :clubevents, dependent: :destroy

  # Paperclip config
  has_attached_file :logo, 
  url: "/assets/clubs/:id/:style/:basename.:extension"
  validates_attachment :logo, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :cover_image,
  url: "/assets/clubs/:id/:style/:basename.:extension"
  validates_attachment_presence :cover_image
  validates_attachment :cover_image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validate :check_dimensions
 
  def check_dimensions
    if :cover_image.blank?
      dimensions = Paperclip::Geometry.from_file(cover_image.queued_for_write[:original].path)
      width = dimensions.width
      height = dimensions.height
        
      if height > width || height < 500
        self.errors.add(:cover_image, "Please type in the correct email address.")
      end
    end  
  end  

  #Geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  # FriendlyId config
  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end
end
