# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

song1 = Song.create ( { name: "I can get no satisfaction"} )
song2 = Song.create ( { name: "Ne me quitte pas"} )
song3 = Song.create  ( { name: "Kiss"} )
song4 = Song.create  ( { name: "Purple rain"} )

artist1 = Artist.create(artist_name: "Rolling Stones")
artist2 = Artist.create(artist_name: "Jaques Brell")
artist3 = Artist.create(artist_name: "Prince")

artist1.songs << [song1]
artist1.save

artist2.songs << [song2]
artist2.save

artist3.songs << [song3]
artist3.save

artist3.songs << [song4]
artist3.save