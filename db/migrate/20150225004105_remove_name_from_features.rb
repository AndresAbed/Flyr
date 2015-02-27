class RemoveNameFromFeatures < ActiveRecord::Migration
  def change
    remove_column :features, :name
  end
end
