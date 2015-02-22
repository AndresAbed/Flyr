class CreateClublists < ActiveRecord::Migration
  def change
    create_table :clublists do |t|
      t.string :list_name
      t.integer :user_id
      t.integer :clubevent_id

      t.timestamps null: false
    end
  end
end
