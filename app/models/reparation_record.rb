class ReparationRecord < ActiveRecord::Base
  attr_accessible :user_id, :evaluation, :evaluation_desc, :reparation_information_id, :reparation_record_status_id, :material_id
  belongs_to :user
  belongs_to :reparation_information
  belongs_to :reparation_record_status
  belongs_to :material
end
