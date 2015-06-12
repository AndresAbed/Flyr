class RemoveGiftsFromFeatures < ActiveRecord::Migration
  def change
    remove_column :features, :gifts
  end
end
