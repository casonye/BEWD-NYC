class Person
	attr_accessor :name, :occupation, :salary, :age

	def initialize(name, occupation, salary, age)
		@name = name
		@occupation = occupation
		@salary = salary
		@age = age.to_i
	end

	def to_s
		"#{ @name } works as a #{ @occupation } making #{ @salary } at #{ @age } years old"
	end

	def birthday
		@age += 1
	end	

end
person = [ 
jane = Person.new("jane", "Consultant", "180000", "28"),
karla = Person.new("karla", "Analyst", "160000", "32"),
jason = Person.new("jason", "Card Shark", "20000", "21"), 
vincent = Person.new("vincent", "GA instructor", "1000000", "35")
]

person.each do |stats|
	stats.birthday	
	puts stats
end