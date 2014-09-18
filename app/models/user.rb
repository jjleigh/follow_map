class User < ActiveRecord::Base
	has_secure_password
	has_many :friends
	validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation
end
