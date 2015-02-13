class ChangeListuserTableName < ActiveRecord::Migration
  def change
    rename_table :list_users, :listusers
  end
end
