class RemoveDescriptionFromClubs < ActiveRecord::Migration
  def change
    remove_column :clubs, :description, :string
  end
end
