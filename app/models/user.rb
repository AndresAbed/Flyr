class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, 
  :rememberable, :trackable, :validatable, :confirmable, :authentication_keys => [:username]

  has_many :lists
  has_many :clublists
  has_many :clublistusers
  has_many :listusers
  #has_many :events, through: :assistances

  has_attached_file :profile_img, :styles => { :medium => "600x600>", 
  :small => "50x50>" }, :url  => "/assets/users/:id/:style/:basename.:extension"
  validates_attachment_presence :profile_img  
  validates_attachment :profile_img, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.name
      user.email = auth.info.email
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.skip_confirmation!
      user.save(:validate => false)
    end
  end

  before_save :set_dummy_email

  def set_dummy_email
    self.email ||= "Ingresa un email"
  end
end
