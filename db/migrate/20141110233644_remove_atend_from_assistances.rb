class RemoveAtendFromAssistances < ActiveRecord::Migration
  def change
  	remove_column :assistances, :attend, :boolean
  end
end
