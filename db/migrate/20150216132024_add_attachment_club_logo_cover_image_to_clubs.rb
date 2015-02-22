class AddAttachmentClubLogoCoverImageToClubs < ActiveRecord::Migration
  def self.up
    change_table :clubs do |t|
      t.attachment :club_logo
      t.attachment :cover_image
    end
  end

  def self.down
    remove_attachment :clubs, :club_logo
    remove_attachment :clubs, :cover_image
  end
end
