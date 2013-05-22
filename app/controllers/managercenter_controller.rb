class ManagercenterController < ApplicationController
  def index
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
end
