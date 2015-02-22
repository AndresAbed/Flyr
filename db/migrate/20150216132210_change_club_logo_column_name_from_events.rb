class ChangeClubLogoColumnNameFromEvents < ActiveRecord::Migration
  def change
    rename_column :events, :club_logo_file_name, :event_logo_file_name
    rename_column :events, :club_logo_file_size, :event_logo_file_size
    rename_column :events, :club_logo_content_type, :event_logo_content_type
    rename_column :events, :club_logo_updated_at, :event_logo_updated_at
  end
end
