class AddClubeventIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :clubevent_id, :integer
  end
end
