class Event < ActiveRecord::Base
	#has_many :assistances
	has_attached_file :image, :styles => { :medium => "600x600>", 
		:small => "32x32>" }, 
	:url  => "/assets/events/:id/:style/:basename.:extension"
	validates_attachment :image, content_type: { content_type: 
		["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	has_attached_file :club_logo, :styles => { :medium => "300x300>"}, 
	:url  => "/assets/events/:id/:style/:basename.:extension"
	validates_attachment :club_logo, content_type: { content_type: 
		["image/jpg", "image/jpeg", "image/png", "image/gif"] }	
end
