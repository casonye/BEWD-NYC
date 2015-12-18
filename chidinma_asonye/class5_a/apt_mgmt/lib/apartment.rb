class Apartment
	attr_accessor :sq_footage, :rent, :neighborhood, :num_bedrooms, :elevator, :renters

	def initialize(neighborhood, rent, sq_footage)
		@neighborhood = neighborhood
		@rent = rent.to_i
		@sq_footage = sq_footage.to_i
		@elevator = false
		@renters = []
		@num_bedrooms = 1
	end	

	def rent_too_damn_high
		@sq_footage * 10 > @rent 
	end	

	def to_s
		"I have a lovely apartment for you in #{ neighborhood.capitalize }, it's only $ #{ @rent } per month and you get #{ @sq_footage} square feet! There are #{ @renters.size } renters living there now."
	end	

	def rent_too_damn_high?
		@sq_footage < @rent
	end	

	def add_renters(renter)
		@renters.push(renter)
	end	


	def is_occupied?
		###I think something is wrong with the is_occupied def
		if @renters.size > 0
			puts "occupied"
		else
			puts "unoccupied"
		end
			 
	end	

end	
