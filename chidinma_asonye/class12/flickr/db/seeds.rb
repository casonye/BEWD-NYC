
Photo.destroy_all


Photo.create(url: "https://i.imgur.com/llJyHQG.gif", caption:"Nahhhhh!")


Photo.create(url: "https://i.imgur.com/OZ3GVTd.gif", caption:"You MAD?!")

User.create(name: "Chidinma", email: "chidinma@gmail.com")

u.photos.create(url: "http://www.catgifpage.com/gifs/307.gif", caption: "golddigger")

u.photo.create(url: "http://www.catgifpage.com/gifs/307.gif", caption: "golddigger")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
