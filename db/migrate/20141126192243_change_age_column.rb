class ChangeAgeColumn < ActiveRecord::Migration
  def change
  	change_column :events, :age, :string
  end
end
