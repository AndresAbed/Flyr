class Event < ActiveRecord::Base
  #has_many :assistances

  # Paperclip config
  has_attached_file :image, :styles => { :medium => "600x600>", 
    :small => "32x32>" }, 
  :url  => "/assets/events/:id/:style/:basename.:extension"
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :club_logo, :styles => { :medium => "300x300>"}, 
  :url  => "/assets/events/:id/:style/:basename.:extension"
  validates_attachment :club_logo, content_type: { content_type: 
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
      where('name LIKE ? OR age LIKE ? OR address LIKE ?', 
        "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Event.all
    end
  end

end
