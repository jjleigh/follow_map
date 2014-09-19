class RemoveFirstAndLastNameAndEmailFromUsersTable < ActiveRecord::Migration
  def change
  	remove_column :users, :email, :string
  	remove_column :users, :first_name, :string
  	remove_column :users, :last_name, :string
  	remove_column :users, :password_digest, :string
  end
end
