class AddImageToClubs < ActiveRecord::Migration
  def change
    add_attachment :clubs, :image
  end
end
