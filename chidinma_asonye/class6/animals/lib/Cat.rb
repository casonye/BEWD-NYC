require_relative 'animal.rb'
require_relative 'hunt.rb'

class Cat < Animal	
	attr_accessor :breed, :weight 

	include Hunt


	def initialize(name, breed, weight, hair)
		@name = name
		@breed = breed
		@weight = weight.to_i
		@number_of_legs = 4
		@hair = hair
	end
	
	def to_s
		"There is a cat named #{ name.capitalize }. It's a #{ breed } that weighs #{ weight } pounds with #{ hair } hair"	
	end	

	def talk
		puts "meow"
	end	

	def reproduction
		puts "yeah baby! purrrrr"
	end


end	