class LoginController < ApplicationController
  def tologin
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
				redirect_to :controller => 'register', :action => 'toregister'
			else
				flash[:notice] = "error username or password"
				redirect_to :action => 'tologin'
			end
		end
	end

	def register

	end
end
