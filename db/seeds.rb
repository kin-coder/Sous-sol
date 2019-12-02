# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all

require 'faker'
7.times do
    Book.create(name: Faker::Book.title, description: Faker::Hipster.paragraph(sentence_count: 6), price: rand(10..100), prestataire_id:rand(1..6))
end

puts "OK";
