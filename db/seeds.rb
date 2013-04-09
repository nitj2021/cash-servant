# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    PropertyType.create([{ name: 'Single Family' }, { name: 'Condo' }, { name: 'Town Home' }, { name: 'Duplex' }, { name: 'Triplex' }])
  PropertyType.create([{ name: 'Quad' }, { name: '5+ Apartment' }, { name: 'Mobile In Park' }, { name: 'Mobile W/ Land' }, { name: 'Modular' }])

PropertyType.create([{ name: 'Commercial' }, { name: 'Land' }, { name: 'Other' }])
Bedroom.create([{quantity: "1"},{quantity: "2"},{quantity: "3"},{quantity: "4"},{quantity: "5"},{quantity: "6"},{quantity: "7"}])
Bedroom.create([{quantity: "8"},{quantity: "9"},{quantity: "10+"},{quantity: "None"}])
Bathroom.create([{quantity: "1"},{quantity: "1.5"},{quantity: "2"},{quantity: "2.5"},{quantity: "3"},{quantity: "3.5"},{quantity: "4"}])
Bathroom.create([{quantity: "4.5"},{quantity: "5+"},{quantity: "None"}])
SellerType.create([{category: "Agent"},{category: "FSBO"},{category: "Other"},{category: "Unknown"}])
Story.create([{quantity: "1"},{quantity: "1.5"},{quantity: "2"},{quantity: "3"},{quantity: "4"},{quantity: "5"},{quantity: "6"},{quantity: "7"}])
Story.create([{quantity: "8"},{quantity: "9"},{quantity: "10+"},{quantity: "None"}])
Pool.create([{category: "None"},{category: "Above Ground"},{category: "In Ground"},{category: "Pool W/ Jacuzzi"},{category: "Jacuzzi"}])
WaterFront.create([{category: "None"},{category: "Pond"},{category: "Lakeview"},{category: "Lakefront"},{category: "Lake & Dock"}])
WaterFront.create([{category: "Canal"},{category: "Canal & Dock"},{category: "Oceanview"},{category: "Oceanfront"},{category: "Ocean & Dock"}])
Garage.create([{capacity: "None"},{capacity: "Driveway"},{capacity: "Carport"},{capacity: "1 car"},{capacity: "2 car"},{capacity: "3 car"}])
Garage.create([{capacity: "4 car"},{capacity: "5+ car"}])
Basement.create([{category: "Yes"},{category: "No"},{category: "Finished"},{category: "Unfinished"},])
