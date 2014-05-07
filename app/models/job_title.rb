class JobTitle < ActiveRecord::Base

  has_and_belongs_to_many :interns
  has_and_belongs_to_many :companies

  attr_accessible :name
end
