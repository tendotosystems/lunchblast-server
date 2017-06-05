# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'guest', email: 'guest@blastapp.io', password: 'password', password_confirmation: 'password')
Origin.create(name: 'work', longitude: -84.364711, latitude: 33.759321)
Destination.create(name: 'Krog Street Market', longitude: -84.364034, latitude: 33.756767)
Selection.create(user_id: 1, destination_id: 1)

Destination.create(name: 'Parish', longitude: -84.360364, latitude: 33.761852)
Destination.create(name: 'Highland Bakery', longitude: -84.365834, latitude: 33.761232)
Destination.create(name: 'Pure Taqueria', longitude: -84.3582457, latitude: 33.7630023)
Destination.create(name: 'Kale Me Crazy', longitude: -84.3584, latitude: 33.76292)
Destination.create(name: 'bartaco Inman Park', longitude: -84.358477, latitude: 33.762406)
Destination.create(name: 'Bell Street Burritos', longitude: -84.365036, latitude: 33.755828)
Destination.create(name: 'Superica', longitude: -84.364181, latitude: 33.757032)
Destination.create(name: 'Ladybird', longitude: -84.364428, latitude: 33.7598)
Destination.create(name: 'Amara', longitude: -84.360206, latitude: 33.7616)
Destination.create(name: 'Char', longitude: -84.359108, latitude: 33.762156)
Destination.create(name: 'Victory Sandwich Bar', longitude: -84.357743, latitude: 33.763958)
Destination.create(name: 'Beetlecat', longitude: -84.358176, latitude: 33.762669)
Destination.create(name: 'Fritti', longitude: -84.357775, latitude: 33.762929)
Destination.create(name: 'Zuma Sushi and Sake Bar', longitude: -84.365155, latitude: 33.761184)
Destination.create(name: 'Ammazza', longitude: -84.368091, latitude: 33.754193)
Destination.create(name: 'Thumbs Up Diner', longitude: -84.368538, latitude: 33.754192)