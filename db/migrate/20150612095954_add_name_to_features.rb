class AddNameToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :name, :string
  end
end
