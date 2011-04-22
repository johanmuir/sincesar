class Group < ActiveRecord::Base
  has_many :user_groups_associations
  has_many :users, :through => :user_group_associations
  belongs_to :user  

  validates :name, :description, :presence => true
  validates :name, :length => { :minimum => 5, :maximum => 100 }
  validates :description, :length => { :minimum => 5, :maximum => 255 }
end
