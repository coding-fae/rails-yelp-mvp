# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating 22 restaurants..."

22.times do
  restaurant = Restaurant.create!(
    name: Faker::Games::WorldOfWarcraft.hero,
    address: Faker::Books::Dune.city,
    category: %w[chinese, italian, japanese, french, belgian].sample
    phone_number: Faker::Number.number(digits: 10)
  )
  puts "Restaurant #{restaurant.id} was created"
end

puts "All done 😇"
