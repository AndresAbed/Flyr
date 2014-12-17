class AddAttachmentImage1Image2Image3Image4ToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
      t.attachment :image4
    end
  end

  def self.down
    remove_attachment :banners, :image1
    remove_attachment :banners, :image2
    remove_attachment :banners, :image3
    remove_attachment :banners, :image4
  end
end
