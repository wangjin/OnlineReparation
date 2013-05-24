class ReparationController < ApplicationController
  def reparationindex
    @reparation_information = ReparationInformation.new
    @locations = Location.find(:all, :conditions => { :parentId => -1 })
    @problems = Problem.find(:all)
    respond_to do |format|
      format.html
      format.json { render json: @locations }
    end
  end

  def sublocation
    @sublocations = Location.find(:all, :conditions => { :parentId => params[:parentId]})
  end

  def processapply
    reparation_information = ReparationInformation.new(params[:reparation_information])
    reparation_information.save
    redirect_to :controller => "welcome", :action => "reparations"
  end
  
end
