class Music < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :club
end
