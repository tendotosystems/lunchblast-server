# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'guest', email: 'guest@blastapp.io', password: 'password', password_confirmation: 'password')
Origin.create(name: 'work', longitude: -84.364711, latitude: 33.759321, user_id: 1)