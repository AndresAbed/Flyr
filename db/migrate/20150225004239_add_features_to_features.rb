class AddFeaturesToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :wifi, :boolean
    add_column :features, :smoking_area, :boolean
    add_column :features, :security, :boolean
    add_column :features, :photos, :boolean
    add_column :features, :birthdays, :boolean
    add_column :features, :credit_cards, :boolean
    add_column :features, :food, :boolean
    add_column :features, :drinks, :boolean
    add_column :features, :gifts, :boolean
    add_column :features, :first_aid, :boolean
    add_column :features, :parking, :boolean
  end
end
