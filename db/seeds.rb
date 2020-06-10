# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

5.times do |number|
  Restaurant.create!(
    name: Faker::Name.unique.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: 'chinese'
    )

  puts "Restaurant creado numero: #{number + 1}"
    end
puts 'Proceso finalizado'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
