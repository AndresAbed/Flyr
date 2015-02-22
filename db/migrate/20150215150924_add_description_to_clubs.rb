class AddDescriptionToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :description, :text
  end
end
