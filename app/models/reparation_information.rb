class ReparationInformation < ActiveRecord::Base
  attr_accessible :cellphone, :location, :problem_desc, :problem_id, :realname
  belongs_to :problem
end
