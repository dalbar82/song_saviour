# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "user1@user.com", password: "password" )

Genre.create!(genre: "Rock")
Genre.create!(genre: "Jazz")
Genre.create!(genre: "Hip Hop")
Genre.create!(genre: "Pop")
Genre.create!(genre: "Folk")
Genre.create!(genre: "Blues")
Genre.create!(genre: "Heavy Metal")
Genre.create!(genre: "Rythm and blues")
Genre.create!(genre: "Country")
Genre.create!(genre: "Musical Theatre")
Genre.create!(genre: "Soul")
Genre.create!(genre: "Punk")
Genre.create!(genre: "Electronic Dance")
Genre.create!(genre: "Reggae")
Genre.create!(genre: "Disco")
Genre.create!(genre: "Funk")
Genre.create!(genre: "House")
Genre.create!(genre: "Techno")
Genre.create!(genre: "Alternative")
Genre.create!(genre: "Trance")
Genre.create!(genre: "Swing")
Genre.create!(genre: "New Wave")
Genre.create!(genre: "Industrial")
Genre.create!(genre: "Ska")
Genre.create!(genre: "Dubstep")
Genre.create!(genre: "Electro")
Genre.create!(genre: "Bluegrass")
Genre.create!(genre: "Jazz")

Song.destroy_all
product1 = Song.create({:name=>"tomato", :price => 1})
product2 = Song.create({:name=>"milk", :price => 3})
product3 = Song.create({:name=>"bread", :price => 5})
product4 = Song.create({:name=>"bacon", :price => 10})
product5 = Song.create({:name=>"cheese", :price => 3})

puts "Total number of products: #{Song.all.count}"
puts "Product names: #{Song.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price}"
puts "Product2: #{product2.name} price: #{product2.price}"
puts "Product3: #{product3.name} price: #{product3.price}"
puts "Product4: #{product4.name} price: #{product4.price}"
puts "Product5: #{product5.name} price: #{product5.price}"

product1.save
product2.save
product3.save
product4.save
product5.save

# CART
ShoppingCart.destroy_all
puts "\nTotal cart count: #{ShoppingCart.all.count}"