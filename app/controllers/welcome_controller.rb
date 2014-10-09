class WelcomeController < ApplicationController
  def index
  		if session[:user_id]
			@current_user = User.find(session[:user_id])
			redirect_to root_url
		end
  end
end
