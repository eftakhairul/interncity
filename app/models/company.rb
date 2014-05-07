class Company < ActiveRecord::Base

  belongs_to              :industry
  has_and_belongs_to_many :job_titles

  attr_accessible :contact_number, :contact_person, :email, :industry_id, :name, :website, :job_titles
  accepts_nested_attributes_for :job_titles, :allow_destroy => false
  attr_accessible :job_titles_attributes
end
