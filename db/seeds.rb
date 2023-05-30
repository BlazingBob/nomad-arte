# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Item.destroy_all
User.destroy_all
lunna = User.create!(email: "lunna@hotmail.com", password: "123456!", firstname: "Lunna", lastname: "Thume", username: "Lunna's")
Item.create!(name: "Lunna", description: "Sculpture" , price_per_day: "50$", category_name: "Modernismo", user: lunna, image_url: "http://sothebys-brightspot.s3.amazonaws.com/media-desk/95/9b/53fc72194c30ac2cd94b3dc96163/pf2305-9yzk5-cs-11-cropped.jpg")
Item.create!(name: "Lua", description: "Mirror" , price_per_day: "20$", category_name: "Baroque", user: lunna, image_url: "https://img5.su-cdn.com/cdn-cgi/image/width=600,height=600,format=webp/mall/file/2023/05/15/77f1a7ecb97a0097b363f5f152b29495.jpg")
