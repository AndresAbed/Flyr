class RemoveClubeventIdFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :clubevent_id
  end
end
