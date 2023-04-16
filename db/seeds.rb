# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  Book.create!(author: Faker::Book.author, description: Faker::Movie.quote , release_year: rand(1950..2022) , status: rand(1), title: Faker::Book.title)
end

10.times do
  Movie.create!(description: Faker::Movie.quote, director: Faker::Book.author, duration: rand(60..180).to_s, release_year: rand(1950..2022), status: rand(1), title: Faker::Movie.title)
end

10.times do
  Category.create!(name: Faker::Book.genre)
end

i = 1
10.times do
  Association::BookCategory.create(book_id: i, category_id: i)
  i+= 1
end

i = 1
10.times do
  Association::MovieCategory.create(movie_id: i, category_id: i)
  i+= 1
end