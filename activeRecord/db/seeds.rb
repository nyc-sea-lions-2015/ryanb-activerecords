# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# --------CREATE USERS --------
5.times do 
  User.create(username:Faker::Internet.user_name, 
              password:'123')
end

# --------CREATE RECORDS --------
20.times do
  Record.create(album_title: Faker::Lorem.sentence,
                artist: Faker::Commerce.product_name,
                genre: ["rock","jazz","hip-hop","country","punk","edm"].sample,
                owner_opinion: Faker::Lorem.paragraph,
                release_year: rand(1920..2015),
                user_id: rand(1..5))

end


# --------CREATE TRACKS --------
40.times do
  Track.create(title: Faker::Commerce.product_name,
                record_id: rand(1..20))

end

#--------CREATE COMMENTS ---------

20.times do
  Comment.create(body: Faker::Lorem.paragraph,
                user_id: rand(1..5),
                record_id: rand(1..20))
end