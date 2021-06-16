# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name: "body_butter", price: 25, image_url: "", description: "silky smooth coating for all your dry days.")

product = Product.create(name: "body_spritz", price: 20, image_url: "", description: "to sparkle and shine like the star that you are!")

product = Product.create(name: "body_lotion", price: 22, image_url: "", description: "a light coating to make your skin feel supple and new.")
