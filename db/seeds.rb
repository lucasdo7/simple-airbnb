require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating 15 faker flats'
15.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Restaurant.description,
    price_per_night: Faker::Number.between(from: 100, to: 500),
    number_of_guests: Faker::Number.between(from: 2, to: 6),
    stars: rand(0..5),
    pet_friendly: Faker::Boolean.boolean(true_ratio: 0.3)
  )
  flat.save!
end
puts 'Finished!'
