# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.new
user1.login = "gallaghd"
user1.email = "gallaghd@cedarville.edu"
user1.password = "password"
user1.password_confirmation = "password"
user1.save!

user2 = User.new
user2.login = "joe"
user2.email = "joe@cedarville.edu"
user2.password = "password"
user2.password_confirmation = "password"
user2.save!

user3 = User.new
user3.login = "pete"
user3.email = "pete@cedarville.edu"
user3.password = "password"
user3.password_confirmation = "password"
user3.save!

#give gallaghd a couple of plans
Plan.create(user_id: user1.id, name: "Plan1")
Plan.create(user_id: user1.id, name: "Plan2")
#joe
Plan.create(user_id: user2.id, name: "PlanJoe")

Term.create(plan_id: 1, semester: 'Fall', year: 2014)
Term.create(plan_id: 1, semester: 'Spring', year: 2015)
Term.create(plan_id: 1, semester: 'Fall', year: 2015)



