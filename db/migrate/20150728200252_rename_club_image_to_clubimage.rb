class RenameClubImageToClubimage < ActiveRecord::Migration
  def change
    rename_table :club_images, :clubimages
  end
end
