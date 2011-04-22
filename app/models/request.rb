class Request < ActiveRecord::Base
  has_many :comments, :dependent => :destroy

  validates :title, :presence => true, :length => { :minimum => 10, :maximum => 255 }
  validates :content, :presence => true, :length => { :minimum => 20, :maximum => 1024 }
  validates :is_public, :presence => true
  validates :type, :presence => true
end
