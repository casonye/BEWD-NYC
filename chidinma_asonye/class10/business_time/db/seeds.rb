# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'seeding'

Company.create(name: "yahoo", marketcap: 200, city: "Chicago")
Company.create(name: "greenhouse", marketcap: 1000, city: "LA")
Company.create(name: "kitchen surfing", marketcap: 500, city: "NYC")
Company.create(name: "genius", marketcap: 775, city: "Salt Lake City")
Company.create(name: "estee lauder", marketcap: 2000, city: "Portland")

puts "Successfully created #{Company.all.count} companies"
