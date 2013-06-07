class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login, :except => [:tologin,:login,:toregister,:register, :logout, :index, :reparations, :materials, :suggestions, :update]
  def require_login
    query_string = URI.parse(request.url).request_uri
    session[:query_string] = query_string
    if session[:user] == nil
      redirect_to :controller => 'login', :action => 'tologin'
    end
  end
end
