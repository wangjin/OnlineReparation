class ReparationRecordStatus < ActiveRecord::Base
  attr_accessible :status_name
  has_many :reparation_record
end
