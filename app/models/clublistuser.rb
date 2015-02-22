class Clublistuser < ActiveRecord::Base
  validates :username, :uniqueness => {:scope => :clubevent_id}
  belongs_to :clublist
  belongs_to :clubevent
end
