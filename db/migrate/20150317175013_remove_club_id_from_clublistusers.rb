class RemoveClubIdFromClublistusers < ActiveRecord::Migration
  def change
    remove_column :clublistusers, :club_id, :integer
    add_column :clublistusers, :user_id, :integer
  end
end
