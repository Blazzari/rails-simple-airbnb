# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'

Flat.destroy_all

puts 'Creating flats...'

10.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.paragraph(sentence_count: 6),
    price_per_night: rand(30..150),
    number_of_guests: rand(1..8)
  )
  flat.save!
  puts "created #{flat.name} !"
end

puts 'Finished!'
