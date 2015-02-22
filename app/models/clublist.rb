class Clublist < ActiveRecord::Base
  has_many :clublistusers, dependent: :destroy
  belongs_to :clubevent
  belongs_to :user
  belongs_to :club
  validates :list_name, :uniqueness => {:scope => :clubevent_id}

   # Paperclip config
  has_attached_file :list_image, 
  :url  => "/assets/clublists/:id/:style/:basename.:extension"
  validates_attachment :list_image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
