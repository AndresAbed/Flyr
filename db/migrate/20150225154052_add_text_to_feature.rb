class AddTextToFeature < ActiveRecord::Migration
  def change
    add_column :features, :text, :string
  end
end
