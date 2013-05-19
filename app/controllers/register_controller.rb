class RegisterController < ApplicationController
  def toregister
		@user = User.new
  end

	def register
		user = User.new
		user.username = params[:username]
		user.password =	params[:password] 
		user.realname	=	params[:realname] 
		user.cellphone =	params[:cellphone] 
		user.email =	params[:email]
		user.usertype = "2"
		if user.save
			redirect_to :controller => 'logins', :action => 'tologin'
		else
			redirect_to :action => 'toregister'
		end
	end
end
