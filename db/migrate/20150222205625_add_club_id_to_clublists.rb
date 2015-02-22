class AddClubIdToClublists < ActiveRecord::Migration
  def change
    add_column :clublists, :club_id, :integer
  end
end
