require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flat.destroy_all
puts 'Creating 15 faker flats'
6.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Restaurant.description,
    price_per_night: Faker::Number.between(from: 100, to: 500),
    number_of_guests: Faker::Number.between(from: 2, to: 6),
    stars: rand(0..5),
    pet_friendly: Faker::Boolean.boolean(true_ratio: 0.3),
    picture_url: ['https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200', 'https://plus.unsplash.com/premium_photo-1678386645963-3f5b0bdb8dcd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', 'https://images.unsplash.com/photo-1565043589221-1a6fd9ae45c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1897&q=80', 'https://images.unsplash.com/photo-1556784344-ad913c73cfc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80', 'https://images.unsplash.com/photo-1580237072617-771c3ecc4a24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'].sample
  )
  flat.save!
end
puts 'Finished!'
