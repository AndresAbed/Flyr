class Listuser < ActiveRecord::Base
  belongs_to :list
  belongs_to :event
  belongs_to :user
  validates :user_id, :uniqueness => {:scope => :list_id}
end
