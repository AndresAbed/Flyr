class DropAssistances < ActiveRecord::Migration
  def change
  	drop_table :assistances
  end
end
