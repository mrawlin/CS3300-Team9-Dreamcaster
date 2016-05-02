# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#The following code makes 6 sample users each with 50 posts. So that we may see how the microposts are manages on their pages
# User.create!(name:  "Example User",
#              email: "example@railstutorial.org",
#              password:              "foobar",
#              password_confirmation: "foobar",
#              admin: true)


# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password)
# end

# require 'faker'
# users = User.order(:created_at).take(6)
# 50.times do
#  content = Faker::Lorem.sentence(5)
#  title = Faker::Lorem.sentence(20)
#  users.each { |user| user.dreams.create!(title: title, content: content) }
# end