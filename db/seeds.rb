# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding...."

puts "Removing all items"
Item.destroy_all

puts "Removing all users"
User.destroy_all

puts "Creating users Jip and Lunna"
lunna = User.create!(email: "lunna@hotmail.com", password: "123456", firstname: "Lunna", lastname: "Pomeranian", username: "Lunna")
jip = User.create!(email: "jip@mail.com", password: "123456", firstname: "Jip", lastname: "Teeuwen", username: "Jip")

#Lunna's items
puts "Creating Lunna's items"
file = URI.open("https://dam.sothebys.com/dam/image/Item/1ca7aa33-564d-4f29-ad92-d0492b89e24e/primary/medium")
item = Item.new(name: "Fernand Léger", artist: "Fernand Léger", description: "Painting", price_per_day: 109, category_name: "Impressionist Modernism", user: lunna)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://sothebys-com.brightspotcdn.com/dims4/default/db85609/2147483647/strip/true/crop/1598x2000+0+0/resize/2880x3606!/format/webp/quality/90/?url=http%3A%2F%2Fsothebys-brightspot-migration.s3.amazonaws.com%2Fa7%2F75%2Ff1%2F1be027bc7ad9ba850d35c0d9211b0fb98fd8feb3b483676c9b403a7030%2F688n09340-854zv.jpg")
item = Item.new(name: "Les Alyscamps", artist: "Vincent van Gogh", description: "Painting", price_per_day: 100, category_name: "Impressionism", user: lunna)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://sothebys-com.brightspotcdn.com/dims4/default/5e90f78/2147483647/strip/false/crop/1387x2000+0+0/resize/292x421!/quality/90/?url=https%3A%2F%2Fsothebys-md.brightspotcdn.com%2F70%2F10%2Fe249d7f9457eb83c447e8a3b0829%2Fpf2379-bzcyr-t2-02-rx.jpg")
item = Item.new(name: "Jeune femme en buste", artist: "Henri-Louis Cordier", description: "Sculpture", price_per_day: 59, category_name: "Modernism", user: lunna)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://dam.sothebys.com/dam/image/lot/ce05eb93-fdc1-4ffd-bab8-34b41ebb52b4/primary/medium")
item = Item.new(name: "Untitled (Sonambient)", artist: "Harry Bertoia", description: "Sculpture", price_per_day: 59, category_name: "Modernism", user: lunna)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://sothebys-md.brightspotcdn.com/dims4/default/51a3a74/2147483647/strip/true/crop/3081x4042+0+0/resize/800x1050!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fmedia-desk%2F89%2F76%2F1389c8e147249f1a2d157dc7c54a%2Fandywarholnewcokedrawing.jpg")
item = Item.new(name: "Andy Warhol", artist: "Andy Warhol", description: "Drawing", price_per_day: 69, category_name: "Contemporary", user: lunna)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://citaliarestauro.com/wp-content/uploads/2021/07/Imagem1.jpg.webp")
item = Item.new(name: "Self Portrait Thorns", artist: "Frida Kahlo", description: "Painting", price_per_day: 199, category_name: "Modernism", user: lunna)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://dam.sothebys.com/dam/image/Item/8b549135-00b4-45b7-a6e8-3a4d163fb5aa/primary/medium")
item = Item.new(name: "Gold mine Serra Pelada", artist: "Sebastião Salgado", description: "Photograph", price_per_day: 119, category_name: "Photographs", user: lunna)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

#Jip's items
puts "Creating Jip's items"
file = URI.open("https://dam.sothebys.com/dam/image/Item/c2110e45-89fb-4b43-9f96-0345edfe0659/primary/medium")
item = Item.new(name: "I See Static (Red)", artist: "Shepard Fairey", description: "Print (unframed)", price_per_day: 3, category_name: "Street Art", user: jip)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://sothebys-md.brightspotcdn.com/dims4/default/579f0ba/2147483647/strip/true/crop/4503x6048+0+0/resize/800x1074!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fmedia-desk%2Fae%2F36%2Fd5420ba44642b8a5477d547dd30d%2Fshepard-fairey-not-one-more.jpg")
item = Item.new(name: "Not One More", artist: "Shepard Fairey", description: "Print (unframed)", price_per_day: 2, category_name: "Street Art", user: jip)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://dam.sothebys.com/dam/image/Item/3ab5323d-5fb1-4af1-bf54-3a37975b4378/primary/medium")
item = Item.new(name: "Mary Queen of Scots", artist: "Judy Chicago", description: "Print", price_per_day: 18, category_name: "Contemporary", user: jip)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

file = URI.open("https://dam.sothebys.com/dam/image/Item/b6ddccaa-6121-4731-a3d4-4f9bae542b87/primary/medium")
item = Item.new(name: "Field of Tiger Lillies", artist: "Sarah Thibault", description: "Painting", price_per_day: 30, category_name: "Contemporary", user: jip)
item.image.attach(io: file, filename: "nes.png", content_type: "image/png")
item.save!

puts "Done!"
