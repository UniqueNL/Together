# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Theme.delete_all
ChatRoom.delete_all
User.delete_all

theme1 = Theme.create(name:"General")
theme2 = Theme.create(name:"Development")
theme3 = Theme.create(name:"Design")
theme4 = Theme.create(name:"Marketing")

general = ChatRoom.create(themes: [theme1], title:"general", description: "Chit-chat about general stuff.")
random = ChatRoom.create(themes: [theme1], title:"random", description: "Random posts about kittens and .. stuff..")
events = ChatRoom.create(themes: [theme1], title:"events", description: "Keep up with the latest events.")
issues = ChatRoom.create(themes: [theme2], title:"issues", description: "Fight with someone if he fucked up merging.")
seochat = ChatRoom.create(themes: [theme4], title:"seo-chat", description: "Marketing? Lame!")
inspiration = ChatRoom.create(themes: [theme3], title:"inspiration", description: "That's interesting...")

sam = User.create(nickname: "UniqueNL", firstname: "Sam", lastname: "Taal", email:"samtaal@outlook.com", password: "samsam", admin: true)
