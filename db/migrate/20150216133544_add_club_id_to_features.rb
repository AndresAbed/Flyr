class AddClubIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :club_id, :integer
  end
end
