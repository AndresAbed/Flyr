class AddAttachmentListImageToClublists < ActiveRecord::Migration
  def self.up
    change_table :clublists do |t|
      t.attachment :list_image
    end
  end

  def self.down
    remove_attachment :clublists, :list_image
  end
end
