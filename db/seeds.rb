# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def thing(name, quantity)
  Thing.create(name: name, quantity: quantity)
end

thing 'Keyboard', 25
thing 'USB Mouse', 26
thing 'Wireless Mouse', 4
thing 'Monitor', 9
thing 'Samsung TV', 1
thing 'USB Outlet', 4
thing 'Projector', 1

# Cables
thing 'RCA Video', 2
thing 'HDMI', 6
thing 'USB Charger', 3
thing 'Desktop Computer Power', 3
thing 'DVI', 2
thing 'VGA', 19
thing 'RCA Video and Audio', 2
thing 'RCA to 1/8"', 1
thing 'VGA to HDMI', 1
thing 'USB to A/B', 1
thing '1/8" to 1/8"', 1
thing 'VGA to DVI', 1

thing 'Headphones with Microphone', 3
thing 'Ear Buds', 20 # ?
thing 'Speaker', 3
thing 'Headphone Spliiter', 1

thing 'Rasperry PI', 19
thing 'Rasperry PI Operating System', 14
thing 'Raspberry Pi Power Supply', 14
thing 'Box of LED',	3
thing 'Makey Makey kits', 15
thing 'Component kits Sunfounder', 12
thing 'Arduino', 14
thing 'Raspberry Pi in Enclosure', 1
thing 'Extension Cord', 10 # ?

thing 'ASUS Laptop', 10
thing 'ASUS Laptop Charger', 9
thing 'ASUS Netbook', 10
thing 'ASUS Netbook Charger', 9

thing 'HP 6530', 3
thing 'HP Elitebook', 8
thing 'HP Charger', 5

thing 'Dell Latitude', 7
thing 'Dell XPS', 1
thing 'Dell PP18', 2
thing 'Dell PP05', 1
thing 'Dell PP15', 1
thing 'Dell Charger', 13

thing 'Blue Tablet', 7
thing 'Black Tablet', 6

thing 'Nintendo Wii', 1
