class Listuser < ActiveRecord::Base
  validates :user_id, :uniqueness => {:scope => :list_id}
  
  belongs_to :list
  belongs_to :event
  belongs_to :user
end
