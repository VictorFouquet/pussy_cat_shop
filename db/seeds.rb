# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sale.destroy_all
Item.destroy_all
User.destroy_all

10.times do

	allCatsPics = ["Cat-1.jpg", "Cat-2.jpg", "Cat-3.jpg", "Cat-4.jpg", "Cat-5.jpg", "Cat-6.jpg", "Cat-7.jpg", "Cat-8.jpg", "Cat-9.jpg"]

	password = "mdpmdp";

	user = User.create!(user_name: Faker::Name.first_name, email: Faker::Internet.email, password: password, password_confirmation: password)
  
	item = Item.create!(title: Faker::Music::RockBand.name, description: Faker::Lorem.paragraph, price: Faker::Number.between(from: 1, to: 15), image_url: allCatsPics.sample)
  
	sale = Sale.create!(user: User.all.sample, item: Item.all.sample)

end