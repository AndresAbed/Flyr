class AddListimageToLists < ActiveRecord::Migration
  def change
    add_attachment :lists, :list_image
  end
end
