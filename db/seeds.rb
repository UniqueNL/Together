# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

general = ChatRoom.create(title:"general", description: "Chit-chat about general stuff. Feel yourself at home.")
random = ChatRoom.create(title:"random", description: "Random posts about kittens, injecting databases with GIFs and more.")
events = ChatRoom.create(title:"events", description: "Keep up with the latest events and expand your network.")
developmentteam = ChatRoom.create(title:"developmentteam", description: "Just development. Fight with someone if he fucked up merging.")
marketing = ChatRoom.create(title:"marketing", description: "Marketing? Boring! Oh well.. they need a channel aswell.")
inspiration = ChatRoom.create(title:"inspiration", description: "How can we do as much as possible in the least amount of time?")
