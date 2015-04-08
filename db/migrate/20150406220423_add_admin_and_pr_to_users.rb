class AddAdminAndPrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :pr, :boolean
  end
end
