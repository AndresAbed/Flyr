class ChangeColumnNameFromLists < ActiveRecord::Migration
  def change
    rename_column :lists, :name, :list_name
  end
end
