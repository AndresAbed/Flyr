class AddSocialNetworkLinksToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :facebook, :string
    add_column :clubs, :twitter, :string
    add_column :clubs, :instagram, :string
    add_column :clubs, :youtube, :string
    add_column :clubs, :googleplus, :string
  end
end
