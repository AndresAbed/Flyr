class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.boolean :attend

      t.timestamps
    end
  end
end
