class Material < ActiveRecord::Base
  attr_accessible :materialamount, :materialname, :materialprice, :problem_id
  belongs_to :problem
end
