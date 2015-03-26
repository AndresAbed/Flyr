class RemoveTextFromFeatures < ActiveRecord::Migration
  def change
    remove_column :features, :text
  end
end
