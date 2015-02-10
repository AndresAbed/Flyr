class List < ActiveRecord::Base

  belongs_to :event
  belongs_to :user

  # Paperclip config
  has_attached_file :list_image, 
  :url  => "/assets/lists/:id/:style/:basename.:extension"
  validates_attachment :list_image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
