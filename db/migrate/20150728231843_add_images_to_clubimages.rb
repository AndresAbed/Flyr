class AddImagesToClubimages < ActiveRecord::Migration
  def change
    add_attachment :clubimages, :img1
    add_attachment :clubimages, :img2
    add_attachment :clubimages, :img3
    add_attachment :clubimages, :img4
    add_attachment :clubimages, :img5
    add_attachment :clubimages, :img6
  end
end
