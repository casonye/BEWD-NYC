# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


c = Course.create(name: "bewd")

i = Instructor.create(name: "vincent")

c.instructor = i

c.students.create([
	{name: "chidinma", grade: 100},
	{name: "jude", grade: 100},
	{name: "jenny", grade: 100},
	{name: "ayal", grade: 100},
	{name: "jim", grade: 100}
])



