class News < ActiveRecord::Base
  attr_accessible :news_content, :news_title, :readtimes, :user_id
  belongs_to :user
end
