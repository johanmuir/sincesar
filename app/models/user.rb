class User < ActiveRecord::Base
  has_many :user_group_associations
  has_many :requests, :dependent => :destroy
  has_many :groups, :through => :user_group_associations
  has_many :comments

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :username, :uniqueness => true, :length => { :minimum => 12, :maximum => 40 }
  validates :first_name, :first_last_name, :second_last_name, :password, :username, :presence => true
  validates :username, :format => { :with => email_regex }
end
