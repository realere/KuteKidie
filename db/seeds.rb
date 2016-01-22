# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker


locations = %w( 'Aberdeen', 'Airdrie', 'Alloa', 'Arbroath', 'Ayr', 'Barrhead', 'Bathgate', 'Bearsden', 'Bellshill', 'Bishopbriggs', 'Blantyre', 'Bonnyrigg', 'Broxburn', 'Cambuslang', 'Clydebank', 'Coatbridge','Cumbernauld', 'Dumbarton', 'Dumfries', 'Dundee', 'Dunfermline', 'East Kilbride', 'Edinburgh', 'Elgin', 'Erskine' ,'Falkirk', 'Glasgow', 'Glenrothes', 'Grangemouth', 'Greenock', 'Hamilton', 'Inverness', 'Irvine', 'Johnstone', 'Kilmarnock', 'Kilwinning', 'Kirkcaldy and Dysart', 'Kirkintilloch', 'Larkhall', 'Livingston', 'Motherwell', 'Musselburgh', 'Newton Mearns', 'Paisley', 'Penicuik', 'Perth', 'Peterhead', 'Port Glasgow', 'Renfrew', 'Rutherglen', 'St Andrews', 'Stirling', 'Viewpark', 'Wishaw')
prng = Random.new


 100.times do |i|


                

 #   puts childminder.inspect
 #  end


  c = Childminder.new
  c.name = Faker::Name.name
   # c.childminder_image = Faker::Avatar.image "https://robohash.org/sitsequiquia.png?size=300x300"
  c.no_of_children = prng.rand(3)+1
  c.phone_number = Faker::PhoneNumber.cell_phone
  c.email = Faker::Internet.safe_email(c.name)
  c.location = locations[rand(locations.length)]
  c.rating = prng.rand(4)+1
  c.about_me = Faker::Lorem.paragraph
  c.save
  puts "childminder #{c.name} created"
end

