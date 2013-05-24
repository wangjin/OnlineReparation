class Problem < ActiveRecord::Base
  attr_accessible :problemType
  has_many :reparation_information
  has_many :material
end
