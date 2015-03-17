class AddUserIdToListusers < ActiveRecord::Migration
  def change
    add_column :listusers, :user_id, :integer
  end
end
