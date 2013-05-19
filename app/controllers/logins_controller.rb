class LoginsController < ApplicationController
  def index
		@user = User.new
		respond_to do |format|
			format.html
			format.json { render json: @user}
		end
  end

	def login
		session[:user] = nil
		if request.post?
			user = User.find_by_username_and_password(params[:username], params[:password])
			if user
				session[:user] = user
				redirect_to :action => 'register'
			else
				flash[:notice] = "error username or password"
			end
		end
	end

	def register

	end
end
