class AddAttachmentImageToClubevents < ActiveRecord::Migration
  def self.up
    change_table :clubevents do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :clubevents, :image
  end
end
