Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, Figaro.env.consumer_key, Figaro.env.consumer_secret
	provider :facebook, Figaro.env.facebook_key, Figaro.env.facebook_secret
	provider :google_oauth2, Figaro.env.google_plus_key, Figaro.env.google_plus_secret
	# provider :identity, on_failed_registration: lambda { |env| IdentitiesController.action(:new).call(env) }
end