class Music < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {scope: :club_id}
  
  belongs_to :club
end
