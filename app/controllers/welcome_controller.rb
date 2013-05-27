class WelcomeController < ApplicationController
  def index
    @news = News.order("created_at DESC")
    @announcements = Announcement.order("created_at DESC")
  end

  def reparations
    @reparation_informations = ReparationInformation.page(params[:page]).per(10)
  end

  def suggestions

  end

  def materials
    @materials = Material.page(params[:page]).per(10)
  end
  
  def show_news_details
    @news = News.find(params[:id])
    @news.readtimes+=1
    @news.save
  end
end
