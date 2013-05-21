class ReparationInformation < ActiveRecord::Base
  attr_accessible :cellphone, :location, :problem_desc, :realname
  blongs_to :problem
end
