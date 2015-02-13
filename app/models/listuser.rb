class Listuser < ActiveRecord::Base
  validates :username, :uniqueness => {:scope => :event_id}
  belongs_to :list
  belongs_to :event
end
