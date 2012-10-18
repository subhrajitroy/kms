class Review < ActiveRecord::Base
  attr_accessible :comments, :status
  belongs_to :project, :inverse_of => :review
  has_one :reviewer, :inverse_of => :reviews
end
