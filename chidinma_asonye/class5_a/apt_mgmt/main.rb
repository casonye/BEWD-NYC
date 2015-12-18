require_relative 'lib/apartment'
require_relative 'lib/person'

a = Apartment.new("Bed-Stuy", 700, 600)
b = Apartment.new("Cobble Hill", 500, 900)
c = Apartment.new("Brooklyn Heights", 900, 400)

d = Person.new("chidinma", "beauty maven", "180000", "33")

apartments = [a, b ,c]

apartments.each do |apt|
	if apt.rent_too_damn_high? == false
		
		apt.renters.each do |r|
			puts r 
		end
	end
end	


c.add_renters(d)
puts c.renters
