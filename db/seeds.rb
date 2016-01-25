# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker

location = ["Aberdeen", "Aberdeenshire", "Amber Valley", "Angus ", "Arun ", "Ashfield", "Aylesbury Vale", "BarnsleyTameside", "Basildon", "Basingstoke & Deane", "Bassetlaw", "Bath & North East Somerset", "Bedford", "Belfast", "Birmingham", "Blackburn", "Bolton", "Bournemouth", "Bracknell Forest", "Bradford", "Braintree", "Breckland", "Bridgend", "Brighton", "Bristol Kirklees", "Broadland", "Broxtowe", "Bury", "Caerphilly", "Calderdale", "Cambridge", "Canterbury", "Cardiff", "Carmarthenshire", "Charnwood", "Chelmsford", "Cheltenham", "Cherwell", "Chester", "Colchester", "Conway", "Coventry", "Crewe & Nantwich", "Dacorum ", "Derby", "Doncaster", "Dover ", "Dudley", "Dumfries & Galloway", "Dundee", "East Ayrshire", "East Devon ", "East Dunbartonshire ", "East Hampshire", "East Hertfordshire", "East Lindsey", "East Riding", "Eastleigh", "Edinburgh", "Elmbridge", "Epping Forest", "Erewash", "Exeter ", "Falkirk", "Fife", "Flintshire", "Gateshead", "Gedling", "Glasgow", "Gloucester", "Guildford", "Gwynedd", "Halton ", "Harrogate", "Havant & Waterloo", "Highland", "Horsham", "Huntingdonshire", "Ipswich", "Isle of Wight", "Kings Lynn & West Norfolk", "Kingston-upon-Hull", "Knowsley", "Lancaster", "Leeds", "Leicester", "LisburnScarborough", "Liverpool", "London", "Luton", "Macclesfield", "Maidstone", "Manchester", "Mid Bedfordshire ", "Mid Sussex ", "Middlesbrough", "Milton Keynes", "Neath Port Talbot", "New Forest", "Newbury", "Newcastle-under-Lyme", "Newcastle-upon-Tyne", "Newport", "North Ayrshire", "North East Lincolnshire", "North Hertfordshire", "North Lanarkshire", "North Lincolnshire", "North Tyneside", "North Wiltshire ", "Northampton", "Norwich", "Nottingham", "Nuneaton & Bedworth", "Oldham", "Oxford", "Pembrokeshire", "Perth & Kinross ", "Peterborough", "Plymouth", "Poole ", "Portsmouth", "Powys", "Preston ", "Reading", "Redcar & Clevelan", "Reigate & Banstead ", "Renfrewshire", "Rhondda, Cynon, Taff", "Rochdale", "Rochester-upon-Medway", "Rotherham", "Salford", "Salisbury ", "Sandwell", "Scottish Borders ", "Sefton", "Sevenoaks", "Sheffield", "Slough ", "Solihull", "South Ayrshire", "South Bedfordshire", "South Cambridgeshire", "South Gloucestershire", "South Kesteven", "South Lanarkshire", "South Oxfordshire", "South Somerset", "South Tyneside", "Southampton", "Southend-on-Sea", "St Albans", "St Helens", "Stafford", "Stockport", "Stockton-on-Tees", "Stoke-on-Trent", "Stratford-on-Avon", "Stroud", "Sunderland", "Swale", "Swansea", "Teignbridge", "Tendring ", "Test Valley", "Thamesdown", "Thanet", "The Wrekin", "Thurrock", "Torbay", "Trafford", "Vale of Glamorgan", "Vale of White Horse", "Wakefield", "Walsall", "WarringtonNorth Somerset", "Warwick ", "Waveney", "Waverley", "Wealden", "West Lancashire", "West Lothian", "West Wiltshire", "Wigan", "Windsor & Maidenhead", "Wirral", "Wokingham ", "Wolverhampton", "Wrexham Maelor", "Wychavon", "Wycombe", "York"]

prng = Random.new


 100.times do |i|


                

 #   puts childminder.inspect
 #  end


  c = Childminder.new
  c.name = Faker::Name.name
   # c.childminder_image = Faker::Avatar.image "https://robohash.org/sitsequiquia.png?size=300x300"
  c.no_of_children = prng.rand(1..3)
  c.phone_number = Faker::PhoneNumber.cell_phone
  c.email = Faker::Internet.safe_email(c.name)
  c.location = location[rand(location.length)]
  c.rating = prng.rand(3..5)
  c.about_me = Faker::Lorem.paragraph
  c.save
  puts "childminder #{c.name} created"



  b = Babysitter.new
  b.name = Faker::Name.name
  b.no_of_children = prng.rand(1..3)
  b.phone_number = Faker::PhoneNumber.cell_phone
  b.email = Faker::Internet.safe_email(b.name)
  b.location = location[rand(location.length)]
  b.rating = prng.rand(3..5)
  b.about_me = Faker::Lorem.paragraph
  b.save
  puts "babysitter #{b.name} created"



  n = Nanny.new
  n.name = Faker::Name.name
  n.no_of_children = prng.rand(1..3)
  n.phone_number = Faker::PhoneNumber.cell_phone
  n.email = Faker::Internet.safe_email(n.name)
  n.location = location[rand(location.length)]
  n.rating = prng.rand(3..5)
  n.about_me = Faker::Lorem.paragraph
  n.save
  puts "nanny #{n.name} created"

end








