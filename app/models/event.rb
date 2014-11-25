class Event < ActiveRecord::Base
	#has_many :assistances
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
	:url  => "/assets/events/:id/:style/:basename.:extension"
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
