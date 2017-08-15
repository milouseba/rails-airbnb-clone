# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'

puts "Destroying database...."
User.destroy_all
puts "Done!"

puts "Creating database..."
100.times do
  url = 'https://randomuser.me/api/'
  user_serialized = open(url).read
  users_list = JSON.parse(user_serialized)

  User.create(email: users_list["results"][0]["email"], url_avatar:
  users_list["results"][0]["picture"]["large"], password:
  users_list["results"][0]["login"]["password"])
end
puts "Done!"

