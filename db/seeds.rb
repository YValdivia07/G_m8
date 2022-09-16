# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Category creation"
Category.create(
  [
    {category: 'Deportes'},
    {category: 'Farándula'},
    {category: 'Nacional'},
    {category: 'Internacional'},
    {category: 'Política'}
  ]
)

puts "News creation"
(1..59).each do |t|
  Newspaper.create(
    {
      header: Faker::Lorem.paragraph,
      body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 4),
      link: Faker::Internet.domain_name,
      category_id: (rand(4)+1)
    },
  )
end