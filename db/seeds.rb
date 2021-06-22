# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name: "body_butter", price: 25, image_url: "https://thehouseandhomestead.com/wp-content/uploads/2017/08/Body-Butter-Feature-Photo-2-scaled.jpg", description: "silky smooth coating for all your dry days.")

product = Product.create(name: "body_spritz", price: 20, image_url: "https://www.riteaid.com/shop/media/catalog/product/0/2/026169038890.jpg?quality=80&bg-color=255,255,255&fit=bounds&height=406&width=406&canvas=406:406", description: "to sparkle and shine like the star that you are!")

product = Product.create!(name: "body_lotion", price: 22, image_url: "https://images.ctfassets.net/py1g0h295kwf/642BqYhxBj3SKrbsOV2rlY/fa9c018cadc8f251483a53e0808446bf/AB_Ecomm_07_1116w1302h_badge.jpg?fit=crop&w=1116&h=1302", description: "a light coating to make your skin feel supple and new.")
