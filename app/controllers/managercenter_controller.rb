class ManagercenterController < ApplicationController
  def managerindex
  end

  def materials
  end

  def accendants
    @users = User.where(:usertype => 2).order("created_at DESC").page(params[:page]).per(10)
  end

  def messages
  end

  def informations
  end
  
  def save_accendant
    user = User.find(params[:id])
    user.realname = params[:realname]
    user.cellphone = params[:cellphone] 
    user.email = params[:email]
    user.save
  end
end
