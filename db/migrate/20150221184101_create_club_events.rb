class CreateClubEvents < ActiveRecord::Migration
  def change
    create_table :club_events do |t|
      t.string :name
      t.date :date
      t.time :hour
      t.string :age
      t.text :description
      t.string :slug
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
