class Identity < OmniAuth::Identity::Models::ActiveRecord
	# validates_presence_of :name
 #  validates_uniqueness_of :email
 #  validates_presence_of :email
 #  validates :password, presence: true, length: { minimum: 6 }
 #  validates :password_confirmation, presence: true

 #  def self.from_omniauth(auth)
 #    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
 #  end

	# def self.create_with_omniauth(auth)
	# 	create! do |user|
	# 		user.provider = auth['provider']
	# 		user.uid = auth['uid'] 
	# 		user.name = auth['info']['name'] || ''
	# 		user.address = auth['info']['location'] || ''
	# 		user.image = auth["info"]["image"] || ''
	# 		user.oauth_token = auth["credentials"]["token"] || ''
	# 		user.oauth_secret = auth["credentials"]["secret"] || ''
	# 		user.save!
	# 	end
		
	# end

end
