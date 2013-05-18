class LoginsController < ApplicationController
  def index
		@user = User.new
		respond_to do |format|
			format.html
			format.json { render json: @user}
		end
  end

	def login
		session[:user_id] = nil
		if request.post?
			user=User.find(params[:username],params[:password])
			if user
				session[:user_id] = user_id
				redirect_to index_path
			else
				flash[:notice] = "error username or password"
			end
		end
	end
end
