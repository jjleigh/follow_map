class User < ActiveRecord::Base
	has_secure_password
	has_many :friends
	# validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation


	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth[:provider]
			user.uid = auth[:uid]
			# user.first_name = auth[:first_name]
			# user.last_name = auth[:last_name]
			# user.email = auth[:email]
		end
		
	end

end
