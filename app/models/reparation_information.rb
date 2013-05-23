class ReparationInformation < ActiveRecord::Base
  attr_accessible :cellphone, :location, :problem_desc, :problem_id, :realname, :user_id, :process_flag
  belongs_to :problem
  belongs_to :user
  has_one :reparation_record
end
