class ReparationInformation < ActiveRecord::Base
  attr_accessible :cellphone, :location, :problem_desc, :problem_id, :realname, :user_id
  belongs_to :problem
  belongs_to :user
end
