class User < ActiveRecord::Base
  attr_accessible :cellphone, :email, :password, :realname, :usertype, :username
	validate :username, :presence => true
end 