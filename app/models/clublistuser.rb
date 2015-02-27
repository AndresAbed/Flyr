class Clublistuser < ActiveRecord::Base
  belongs_to :clublist
  belongs_to :clubevent
  validates :username, :uniqueness => {:scope => :clubevent_id}
end
