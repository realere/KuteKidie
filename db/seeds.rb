# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prng = Random.new

25.times do |i|
  c = Childminder.new
  c.name = Faker::Name.name
  c.no_of_children = prng.rand(3)+1
  c.phone_number = Faker::PhoneNumber.cell_phone
  c.email = Faker::Internet.safe_email(c.name)
  c.location = Faker::Address.city
  c.rating = prng.rand(4)+1
  c.about_me = Faker::Lorem.paragraph
  c.save
  puts "childminder #{c.name} created"
end

25.times do |i|
  b = Babysitter.new
  b.name = Faker::Name.name
  b.phone = Faker::PhoneNumber.cell_phone
  b.email = Faker::Internet.safe_email(b.name)
  b.location = Faker::Address.city
  b.about_me = Faker::Lorem.paragraph
  b.save
  puts "babysitter #{b.name} created"
end

# 25.times do |i|
#   n = Nanny.new
#   n.name = Faker::Name.name
#   n.age = prng.rand(25)+1
#   n.phone = Faker::PhoneNumber.cell_phone
#   n.email = Faker::Internet.safe_email(n.name)
#   n.location = Faker::Address.city
#   n.about_me = Faker::Lorem.paragraph
#   n.save
#   puts "babysitter #{b.name} created"
# end



