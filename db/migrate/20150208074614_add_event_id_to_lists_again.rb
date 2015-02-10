class AddEventIdToListsAgain < ActiveRecord::Migration
  def change
    add_column :lists, :event_id, :integer
  end
end
