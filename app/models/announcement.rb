class Announcement < ActiveRecord::Base
  attr_accessible :announcement_content, :announcement_title, :readtimes, :user_id
end
