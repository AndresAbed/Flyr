class ChangeClubLogoNameFromClubs < ActiveRecord::Migration
  def change
    rename_column :clubs, :club_logo_file_name, :logo_file_name
    rename_column :clubs, :club_logo_content_type, :logo_content_type
    rename_column :clubs, :club_logo_file_size, :logo_file_size
    rename_column :clubs, :club_logo_updated_at, :logo_updated_at
  end
end
