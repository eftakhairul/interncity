# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Some Dummy Entry for University
universities = University.create([{ name: 'BRAC University' }, { name: 'North South University' }])

#Some Dummy Entry for Major
Majors = Major.create([{ name: 'Software Engineer' }, { name: 'Marketing' }])

#Some Dummy Entry for Job Title
jobtiles = JobTitle.create([{ name: 'Software Engineer' }, { name: 'QA' }])

#Some Dummy Entry for Industry
industries = Industry.create([{ name: 'IT' }, { name: 'TELCO' }])