class Clublistuser < ActiveRecord::Base
  belongs_to :clublist
  belongs_to :clubevent
  belongs_to :user
  validates :user_id, :uniqueness => {:scope => :clublist_id}
end
