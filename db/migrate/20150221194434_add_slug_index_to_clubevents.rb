class AddSlugIndexToClubevents < ActiveRecord::Migration
  def change
    add_index :clubevents, :slug
  end
end
