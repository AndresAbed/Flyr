class AddIdsToAssistances < ActiveRecord::Migration
  def change
    add_column :assistances, :user_id, :integer
    add_column :assistances, :event_id, :integer
  end
end
