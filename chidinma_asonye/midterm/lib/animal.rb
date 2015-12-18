class Animal
	attr_accessor :animal_name, :species, :toy

	def initialize(animal_name, species)
		@animal_name = animal_name
		@species = species
		@toys = []
	end	

	def buy_toy(x)
		@toys << x
	end	

	def to_s
		"There is a #{ @species } named #{ @animal_name } with #{ @toy.count } toys."
	end	

end	
