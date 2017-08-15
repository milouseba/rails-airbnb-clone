# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



article = Article.new(title: "super weed", description: "super defonce", address: "16 villa gaudelet 75011 Paris",
                      price: rand(30..60), user_id: 2)

article.save
