class Suggestion < ActiveRecord::Base
  attr_accessible :email, :realname, :suggestion_desc, :suggestion_type
end
