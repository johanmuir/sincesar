class Comment < ActiveRecord::Base
  belongs_to :request

  validates :content, :presence => true, :length => { :maximum => 255 }
end
