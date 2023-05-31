# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.destroy_all
User.destroy_all
lucas = User.create!(firstname: "Lucas" , lastname: "Souza", email: "email@email.com", username: "lucassouza01", password: "secret")
Item.create!(name: "Picasso", description: "Artists", price_per_day: "12$", category_name: "Cubism", user: lucas)
Item.create!(name: "Dali", description: "Artists", price_per_day: "15$", category_name: "Surrealism", user: lucas)
Item.create!(name: "Monet", description: "Artists", price_per_day: "12$", category_name: "Cubism", user: lucas)
Item.create!(name: "Serra", description: "Artists", price_per_day: "15$", category_name: "Surrealism", user: lucas)