# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.new
user1.login = "peterso"
user1.email = "wrpeterson@cedarville.edu"
user1.password = "password"
user1.password_confirmation = "password"
user1.save!

user2 = User.new
user2.login = "pete"
user2.email = "pete@cedarville.edu"
user2.password = "password"
user2.password_confirmation = "password"
user2.save!

user3 = User.new
user3.login = "admin"
user3.email = "admin@somewhere.com"
user3.password = "password"
user3.password_confirmation = "password"
user3.is_admin = 1
user3.save!

# give peterso some plans
plan1 = Plan.new
plan1.user_id = user1.id
plan1.name = "Plan1"
plan1.start_term = "Fall 2015"
plan1.save!

plan2 = Plan.new
plan2.user_id = user1.id
plan2.name = "Plan2"
plan2.start_term = "Spring 2015"
plan2.save!

# Add course
course1 = Course.new
course1.name = "New Course 1"
course1.save!

course2 = Course.new
course2.name = "New Course 2"
course2.save!

# Add terms
term1 = Term.new
term1.plan_id = plan1.id
term1.semester = "Fall"
term1.year = 2015
term1.courses << course1
term1.courses << course2
term1.save!

term2 = Term.new
term2.plan_id = plan1.id
term2.semester = "Spring"
term2.year = 2015
term2.save!

