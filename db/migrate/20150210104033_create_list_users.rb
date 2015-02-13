class CreateListUsers < ActiveRecord::Migration
  def change
    create_table :list_users do |t|
      t.string :username
      t.integer :list_id

      t.timestamps
    end
  end
end
