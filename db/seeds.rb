# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "user1@user.com", password: "password", first_name: "Kiera", last_name: "Hour-Uoy", nickname: "Wild Child", cred:60 )
User.create!(email: "user2@user.com", password: "password", first_name: "Ian", last_name: "Taylor", nickname: "PetMeister", cred:70 )
User.create!(email: "user3@user.com", password: "password", first_name: "Angus", last_name: "Williamson", nickname: "Opera Curry", cred:60 )
User.create!(email: "user4@user.com", password: "password", first_name: "Akash", last_name: "Chhetri" , nickname: "DJ Traxx", cred:150)
User.create!(email: "user5@user.com", password: "password", first_name: "Thembisile", last_name: "Baleni", nickname: "Thembi boi", cred: 90 )
User.create!(email: "user6@user.com", password: "password", first_name: "Meredith", last_name: "MacAulay", nickname: "Hot Sauce", cred: 220 )
User.create!(email: "user7@user.com", password: "password", first_name: "Damion", last_name: "Lonel", nickname: "The One", cred: 450 )

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

Song.create!(name: "Always be my Baeby, Byeongchan" , price: 500, state: "available", dollar: true, user_id: 1, genre_id:9 )
Song.create!(name: "Seeding forever" , price: 0, state: "pending", dollar: false, user_id: 2, genre_id:4 )
Song.create!(name: "Filiharmonic Fling " , price: 250, state: "available", dollar: true, user_id: 3, genre_id:7 )
Song.create!(name: "McCarthy Mulestep" , price: 350, state: "available", dollar: true, user_id: 6, genre_id:25 )
Song.create!(name: "Hold me close I am Shivika-ing tonight " , price: 750, state: "available", dollar: true, user_id: 4, genre_id:6 )
Song.create!(name: "Trash urself" , price: 200, state: "available", dollar: true, user_id: 5, genre_id:14 )
Song.create!(name: "They call me Dr P " , price: 210, state: "available", dollar: true, user_id: 4, genre_id:11 )
Song.create!(name: "Batch Fever" , price: 2, state: "available", dollar: false, user_id: 4, genre_id:10 )
Song.create!(name: "I am the Unicorn" , price: 1, state: "available", dollar: true, user_id: 2, genre_id:16 )
Song.create!(name: "Enough for now" , price: 3, state: "pending", dollar: false, user_id: 5, genre_id:20 )
Song.create!(name: "Live to code" , price: 350, state: "pending", dollar: false, user_id: 2, genre_id:4 )
Song.create!(name: "Late night feverdream" , price: 275, state: "available", dollar: true, user_id: 7, genre_id:4 )
Song.create!(name: "Seeding forever" , price: 125, state: "pending", dollar: false, user_id: 6, genre_id:8 )