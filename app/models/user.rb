class User < ActiveRecord::Base
  attr_accessible :cellphone, :email, :password, :realname, :usertype, :username, :location
	validate :username, :presence => true
end 