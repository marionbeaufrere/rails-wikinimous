# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

def fake_content
  paragraphs = []
  paragraphs << Faker::Lorem.paragraph
  paragraphs << Faker::Lorem.paragraph(2)
  paragraphs << Faker::Lorem.paragraph(3)
  paragraphs.flatten.join("\n\n")
end

10.times do
  Article.create(
    title: Faker::Company.catch_phrase,
    content: fake_content
  )
end
