class AddClubIdToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :club_id, :integer
  end
end
