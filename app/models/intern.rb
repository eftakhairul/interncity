class Intern < ActiveRecord::Base

  belongs_to              :major
  belongs_to              :university
  has_and_belongs_to_many :job_titles

  attr_accessible :contact_number, :email, :graduation_year, :linkedin_address, :major_id, :name, :university_id, :job_titles

  accepts_nested_attributes_for :job_titles, :allow_destroy => false
  attr_accessible :job_titles_attributes

end
