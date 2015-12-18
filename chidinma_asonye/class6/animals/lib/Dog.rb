require_relative 'animal.rb'


class Dog < Animal	
	attr_accessor :breed, :weight 


	def initialize(name, breed, weight, hair)
		@name = name
		@breed = breed
		@weight = weight.to_i
		@number_of_legs = 4
		@hair = hair
	end
	
	def to_s
		"There is a dog named #{ name.capitalize }. It's a #{ breed } that weighs #{ weight } pounds with #{ hair } hair"	
	end	

	def talk
		puts "woof"
	end	

end	