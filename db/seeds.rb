# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Picture.destroy_all
Comment.destroy_all
Tag.destroy_all

pic1 = Picture.create!(title: "Bunny", description: "Just look at this bunny", url: "http://theartmad.com/wp-content/uploads/2015/03/Bunny-2.jpg")
pic2 = Picture.create!(title: "Bird", description: "Standing on a branch and yelling", url: "http://40.media.tumblr.com/e0496fd38f282d7996bdce8618e6d2a5/tumblr_n7fwydGtMF1tu0z5no1_500.jpg")
pic3 = Picture.create!(title: "Guinea Pig", description: "A pepper for a hat", url: "http://i.imgur.com/5bNMuVa.jpg")


Comment.create!(name: "Natalie", message: "Great picture!", picture_id: pic1.id)
Comment.create!(name: "anon", message: "terrible", picture_id: pic2.id)
Comment.create!(name: "Dave", message: "Beautiful artistry", picture_id: pic1.id)

animal_tag = Tag.create!(name: "animals")
food_tag = Tag.create!(name: "food")

pic1.tags << food_tag


