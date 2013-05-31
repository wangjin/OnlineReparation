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
    user.location = params[:location]
    user.usertype = "3"
    if user.save
      redirect_to :controller => 'login', :action => 'tologin'
    else
      redirect_to :action => 'toregister'
    end
  end
end
