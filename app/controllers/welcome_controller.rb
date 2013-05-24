class WelcomeController < ApplicationController
  def index
    @news = News.order("updated_at DESC")
    @announcements = Announcement.order("updated_at DESC")
  end

  def reparations
    @reparation_informations = ReparationInformation.page(params[:page]).per(10)
  end

  def suggestions

  end

  def materials
    @materials = Material.page(params[:page]).per(10)
  end
end
