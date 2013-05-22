class User < ActiveRecord::Base
  attr_accessible :cellphone, :email, :password, :realname, :usertype, :username, :location
  has_many :reparation_information
  has_many :news
  has_many :announcements
	validate :username, :presence => true
end 