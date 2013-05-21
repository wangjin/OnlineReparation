class ReparationController < ApplicationController
  def index
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
    reparation_information = ReparationInformation.new
    reparation_information.realname = params[:realname]
    reparation_information.cellphone = params[:cellphone]
    reparation_information.location = params[:location]
    reparation_information.problem_id = params[:problemType]
    reparation_information.problem_desc = params[:problemDesc]
    reparation_information.save
  end
end
