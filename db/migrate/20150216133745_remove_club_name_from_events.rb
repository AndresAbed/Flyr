class RemoveClubNameFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :club_name
  end
end
