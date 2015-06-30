class RemoveCoverimageFromClubs < ActiveRecord::Migration
  def change
    remove_column :clubs, :cover_image_file_name
    remove_column :clubs, :cover_image_content_type
    remove_column :clubs, :cover_image_file_size
    remove_column :clubs, :cover_image_updated_at
  end
end
