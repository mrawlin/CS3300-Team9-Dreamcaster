# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#The following code makes 6 sample users each with 50 posts. So that we may see how the microposts are manages on their pages
require 'faker'
users = User.order(:created_at).take(6)
50.times do
 content = Faker::Lorem.sentence(5)
 users.each { |user| user.microposts.create!(content: content) }
end