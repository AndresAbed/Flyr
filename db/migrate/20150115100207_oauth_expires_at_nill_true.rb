class OauthExpiresAtNillTrue < ActiveRecord::Migration
  def change
  	change_column :users, :oauth_expires_at, :datetime, :null => true
  end
end
