class RenameClubEventsTable < ActiveRecord::Migration
  def change
    rename_table :club_events, :clubevents
  end
end
