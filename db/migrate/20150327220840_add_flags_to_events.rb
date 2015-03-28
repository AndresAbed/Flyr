class AddFlagsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :approved, :boolean
    add_column :events, :ended, :boolean
  end
end
