class Listuser < ActiveRecord::Base
  belongs_to :list
  belongs_to :event
  validates :username, :uniqueness => {:scope => :event_id}
end
