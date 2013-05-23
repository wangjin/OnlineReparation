class MaterialUsage < ActiveRecord::Base
  attr_accessible :material_id, :reparation_record_id
  belongs_to :material
  belongs_to :reparation_record
end
