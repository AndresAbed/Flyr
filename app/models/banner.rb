class Banner < ActiveRecord::Base
	has_attached_file :image1, :url  => "/images/banners/:id/:style/:basename.:extension"
  validates_attachment_presence :image1
	validates_attachment :image1, content_type: { content_type: 
		["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	has_attached_file :image2, :url  => "/images/banners/:id/:style/:basename.:extension"
  validates_attachment_presence :image2
	validates_attachment :image2, content_type: { content_type: 
		["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	has_attached_file :image3, :url  => "/images/banners/:id/:style/:basename.:extension"
  validates_attachment_presence :image3
	validates_attachment :image3, content_type: { content_type: 
		["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	has_attached_file :image4, :url  => "/images/banners/:id/:style/:basename.:extension"
  validates_attachment_presence :image4
	validates_attachment :image4, content_type: { content_type: 
		["image/jpg", "image/jpeg", "image/png", "image/gif"] }		
end
