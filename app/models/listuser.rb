class Listuser < ActiveRecord::Base
  validates :username, :uniqueness => {:scope => :list_id}
  belongs_to :list
end
