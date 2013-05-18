class User < ActiveRecord::Base
  attr_accessible :cellphone, :email, :password, :realname, :type, :username
	validate :username, :presence => true
end
