class AddNameAndOauthTokenColumnsToUsersTable < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :oauth_token, :string
  	add_column :users, :oauth_secret, :string
  	add_column :users, :oauth_expires_at, :datetime
  	add_column :users, :address, :string
  end
end
