class WelcomeController < ApplicationController
  def index
    @news = News.order("created_at DESC")
    @announcements = Announcement.order("created_at DESC")
  end

  def reparations
    @reparation_informations = ReparationInformation.order("created_at DESC").page(params[:page]).per(10)
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
  
   def show_announcement_details
    @announcement = Announcement.find(params[:id])
    @announcement.readtimes+=1
    @announcement.save
  end
  
  def submitsuggestions
    suggestion = Suggestion.new
    suggestion.realname = params[:realname]
    suggestion.email = params[:email]
    suggestion.suggestion_type = params[:suggestion_type]
    suggestion.suggestion_desc = params[:suggestion_desc]
    suggestion.save
    redirect_to :root
  end
end
