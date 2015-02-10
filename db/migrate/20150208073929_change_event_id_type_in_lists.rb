class ChangeEventIdTypeInLists < ActiveRecord::Migration
  def change
    change_column :lists, :event_id, :string
  end
end
