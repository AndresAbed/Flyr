class AddAttachmentClubLogoToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :club_logo
    end
  end

  def self.down
    remove_attachment :events, :club_logo
  end
end
