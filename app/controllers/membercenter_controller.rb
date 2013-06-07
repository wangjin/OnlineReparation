class MembercenterController < ApplicationController
  def memberindex
    if session[:user]
      @user = session[:user]
    end
  end
  
  def update
    if session[:user]
      user = session[:user]
      user.username = params[:username]
      user.password = params[:password]
      user.cellphone = params[:cellphone]
      user.email = params[:email]
      user.location = params[:location]
      user.save
      redirect_to :action => "memberindex"
    end
  end
end
