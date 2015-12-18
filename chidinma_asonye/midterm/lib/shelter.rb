require_relative 'animal.rb'
require_relative 'client.rb'

class Shelter
	attr_accessor :shelter_name, :animals, :shelter_clients

	def initialize(shelter_name)
		@shelter_name = shelter_name.capitalize
		@animals = []
		@shelter_clients = []
	end	

	def add_shelterclient(person)
		@shelter_clients << person
	end

	def show_animals
		n = 1
		@animals.each do |beast|
			puts "#{n} #{beast.animal_name}"
			n += 1
		end	
	end	

	def add_animals(shelter)
		@animals << shelter
	end	

	# def adopt(animal)
	# 	orphans.delete(animal)
	# end

	# def return(animal)
	# 	orphans.push(animal)
	# end
end




