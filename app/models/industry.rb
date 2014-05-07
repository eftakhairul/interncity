class Industry < ActiveRecord::Base

  has_many :companies

  attr_accessible :name
end
