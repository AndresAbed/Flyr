class AddClubNameToClubevents < ActiveRecord::Migration
  def change
    add_column :clubevents, :club_name, :string
  end
end
