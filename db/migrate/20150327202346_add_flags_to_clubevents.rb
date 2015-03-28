class AddFlagsToClubevents < ActiveRecord::Migration
  def change
    add_column :clubevents, :approved, :boolean
    add_column :clubevents, :ended, :boolean
  end
end
