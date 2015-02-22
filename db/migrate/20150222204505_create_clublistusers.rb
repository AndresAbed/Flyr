class CreateClublistusers < ActiveRecord::Migration
  def change
    create_table :clublistusers do |t|
      t.string :username
      t.integer :clublist_id
      t.integer :club_id
      t.integer :clubevent_id

      t.timestamps null: false
    end
  end
end
