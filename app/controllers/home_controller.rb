class HomeController < ApplicationController

  def index
    @intern     = Intern.new
    @university = University.all
    @major      = Major.all
    @company    = Company.new
    @industries = Industry.all
    @jobs       = JobTitle.all
    @mentor     = Mentor.new
  end
end
