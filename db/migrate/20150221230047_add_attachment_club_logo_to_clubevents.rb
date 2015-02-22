class AddAttachmentClubLogoToClubevents < ActiveRecord::Migration
  def self.up
    change_table :clubevents do |t|
      t.attachment :club_logo
    end
  end

  def self.down
    remove_attachment :clubevents, :club_logo
  end
end
