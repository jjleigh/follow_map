class User < ActiveRecord::Base
	has_secure_password
	has_many :friends
	validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation


	def self.creat_with_omniauth(auth)
		create! do |user|
			user.provider = auth[:provider]
			user.uid = auth[:uid]
		end
		
	end

end
