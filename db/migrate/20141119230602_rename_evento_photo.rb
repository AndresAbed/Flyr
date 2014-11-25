class RenameEventoPhoto < ActiveRecord::Migration
  def change
  	rename_column :events, :event_photo_file_name, :image_file_name
  	rename_column :events, :event_photo_content_type, :image_content_type
  	rename_column :events, :event_photo_file_size, :image_file_size
    rename_column :events, :event_photo_updated_at, :image_updated_at
  end
end
