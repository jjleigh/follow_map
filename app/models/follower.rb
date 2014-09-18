class Follower < ActiveRecord::Base
	belongs_to :user

	def self.follower_data(follower, user_id, location_value)
		self.create_with(
			name: follower.name,
			user_id: user_id,
			location: follower.location,
			user_name: follower.user_name,
			latitude: location_value.first + rand(0..0.05000),
			longitude: location_value.second + rand(0..0.05000),
			avatar: follower.profile_image_url.to_s,
			).find_or_create_by(user_id: user_id, user_name: follower.user_name)
	end

	def self.get_marker_data(user_name, name, location)
		"<span class='friend-info'><em>@#{user_name}</em><br>#{name}<br>#{location}<span>"
	end
end
