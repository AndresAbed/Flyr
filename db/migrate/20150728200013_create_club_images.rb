class CreateClubImages < ActiveRecord::Migration
  def change
    create_table :club_images do |t|
      t.integer :club_id

      t.timestamps null: false
    end
  end
end
