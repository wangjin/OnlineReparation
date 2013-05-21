class Problem < ActiveRecord::Base
  attr_accessible :problemType
  has_one :reparation_information
end
