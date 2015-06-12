class RemoveAllColumnsFromFeatures < ActiveRecord::Migration
  def change
    remove_column :features, :wifi
    remove_column :features, :smoking_area
    remove_column :features, :security
    remove_column :features, :photos
    remove_column :features, :birthdays
    remove_column :features, :credit_cards
    remove_column :features, :food
    remove_column :features, :drinks
    remove_column :features, :first_aid
    remove_column :features, :parking
  end
end
