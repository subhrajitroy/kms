class Project < ActiveRecord::Base
  attr_accessible :category, :description, :name, :uuid , :reviewer , :status

  has_one :review

end
