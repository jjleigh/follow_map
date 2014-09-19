class SessionsController < ApplicationController
	def create

		user = User.from_omniauth(env['omniauth.auth'])
			session[:user_id] = user.id
			redirect_to pictures_url

		# auth = request.env['omniauth.auth']
		# user = User.find_by_email(params[:email])
		# if user && user.authenticate(params[:password])
		# else
		# 	flash.now[:alert] = "Invalid email or password"
		# 	render :new
		# end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end
