class AddAddressToClubevents < ActiveRecord::Migration
  def change
    add_column :clubevents, :address, :string
  end
end
