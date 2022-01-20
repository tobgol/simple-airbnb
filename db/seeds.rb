# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'cleaning up database'
Flat.destroy_all
puts 'database is clean'

100.times do
  flat = Flat.create(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    description: 'Lorem ipsum dolor sit amet,
    consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
    labore et dolore magna aliqua. Ore eu fugiat nulla pariatur.',
    price_per_night: rand(50..200),
    number_of_guests: rand(1..5)
  )
  puts "flat #{flat.id} is created"
end
