class University < ActiveRecord::Base

  has_many :interns

  attr_accessible :name
end
