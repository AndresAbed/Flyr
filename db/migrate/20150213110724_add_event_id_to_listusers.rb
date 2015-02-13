class AddEventIdToListusers < ActiveRecord::Migration
  def change
    add_column :listusers, :event_id, :integer
  end
end
