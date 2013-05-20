class ReparationController < ApplicationController
  def index
    @locations = Location.find(:all, :conditions => { :parentId => -1 })
    respond_to do |format|
      format.html
      format.json { render json: @locations }
    end
  end
  
  def sublocation
    @sublocations = Location.find(:all, :conditions => { :parentId => params[:parentId]})
  end
end
