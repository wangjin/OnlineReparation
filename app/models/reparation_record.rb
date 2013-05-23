class ReparationRecord < ActiveRecord::Base
  attr_accessible :accendant_id, :evaluation, :evaluation_desc, :reparation_information_id, :status
  belongs_to :user
  belongs_to :reparation_information
end
