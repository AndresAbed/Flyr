class AddClubIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :club_id, :integer
  end
end
