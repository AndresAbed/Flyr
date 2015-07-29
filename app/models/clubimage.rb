class Clubimage < ActiveRecord::Base
  belongs_to :club

  has_attached_file :img1, 
  url: "/images/clubimages/:id/:style/:basename.:extension"
  validates_attachment :img1, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :img2, 
  url: "/images/clubimages/:id/:style/:basename.:extension"
  validates_attachment :img2, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :img3, 
  url: "/images/clubimages/:id/:style/:basename.:extension"
  validates_attachment :img3, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :img4, 
  url: "/images/clubimages/:id/:style/:basename.:extension"
  validates_attachment :img4, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :img5, 
  url: "/images/clubimages/:id/:style/:basename.:extension"
  validates_attachment :img5, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :img6, 
  url: "/images/clubimages/:id/:style/:basename.:extension"
  validates_attachment :img6, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }        
end
