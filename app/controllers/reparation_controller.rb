class ReparationController < ApplicationController
  def index
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
  
 # def process
  #  rp = ReparationInformation.new
   # rp.realname = params[:realname]
    #rp.cellphone = params[:cellphone]
    #rp.location = params[:location]
    #rp.problem = Problem.find(params[:problemType])
    #rp.problemDesc = params[:problemDesc]
 # end
end
