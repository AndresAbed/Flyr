class Clublistuser < ActiveRecord::Base
  validates :user_id, :uniqueness => {:scope => :clublist_id}
  
  belongs_to :clublist
  belongs_to :clubevent
  belongs_to :user
end
