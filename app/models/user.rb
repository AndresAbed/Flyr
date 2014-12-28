class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, 
  :rememberable, :trackable, :validatable, :confirmable, :authentication_keys => [:username]

  #has_many :assistances
  #has_many :events, through: :assistances

  has_attached_file :profile_img, :styles => { :medium => "600x600>", 
    :small => "50x50>" }, :url  => "/assets/users/:id/:style/:basename.:extension"
  validates_attachment :profile_img, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save(:validate => false) 
    end
  end
end
