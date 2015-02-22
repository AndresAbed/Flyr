class RemoveClucIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :club_id
  end
end
