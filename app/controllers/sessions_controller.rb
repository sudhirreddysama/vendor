class SessionsController < ApplicationController
	def create
		user = User.find_by(email:login_params[:email])
		if user.present?
			session[:user_id] = user.id
			redirect_to '/updates'
		else
			flash[:login_errors] = ['invalid Credentials']
			redirect_to '/'
		end
	end

	private

		def login_params
			params.require(:login).permit(:email, :password)
		end
end
