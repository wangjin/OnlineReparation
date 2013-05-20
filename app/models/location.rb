class Location < ActiveRecord::Base
  attr_accessible :locationId, :locationName, :parentId
end
