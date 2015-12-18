require_relative 'animal.rb'

class Client
	attr_accessor :name, :age, :pets

	def initialize(name, age)
		@name = name
		@age = age.to_i
		@pets = []
	end	

	def adopt_animal(animal)
		@pets << animal
	end	

	def to_s
		"There is a client named #{ name } who is #{ age } years old and owns #{ animal.count } pets."
	end	

end	
