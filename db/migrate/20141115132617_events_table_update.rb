class EventsTableUpdate < ActiveRecord::Migration
  def change
  	rename_column :events, :title, :name
  	rename_column :events, :time, :hour
  	add_column :events, :age, :integer
  	add_column :events, :club_name, :string
  end
end
