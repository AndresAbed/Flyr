class AddClubIdToClubEvents < ActiveRecord::Migration
  def change
    add_column :clubevents, :club_id, :integer
  end
end
