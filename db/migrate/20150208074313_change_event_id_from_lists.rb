class ChangeEventIdFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :event_id
  end
end
