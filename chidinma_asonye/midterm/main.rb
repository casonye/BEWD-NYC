require 'pry'
require_relative "lib/shelter"
require_relative "lib/animal"
require_relative "lib/client"



kru = Shelter.new("Kitties R Us")


a = Animal.new("Tigger", "cat")
b = Animal.new("Mojo", "dog")


p1 = Client.new("John", 32)
p2 = Client.new("Chidinma", 33)

kru.add_shelterclient(p1)
kru.add_shelterclient(p2)


kru.add_animals(a)
kru.add_animals(b)

kru.show_animals

binding.pry

p1.adopt_animal(b)
p2.adopt_animal(a)

#delete_at(yyyyy)



# place = [ 
# 	{"shelter_name" => "Kitties R Us", "animals" => [],  "shelter_clients" => [] } 
# ]


# place.each do |shelter|
#   puts "There are currently #{ shelter["animals"].count } animals and #{ shelter["shelter_clients"].count } clients at #{ shelter["shelter_name"].upcase } shelter."
  
#   puts "ANIMALS:"
#   shelter["animals"].each do |moniker|
#   	puts moniker.capitalize
#   end

#   puts "SHELTER CLIENTS:"
#   shelter["shelter_clients"].each do |name|
#   	puts name.capitalize
#   end

# end




#	orphans.each do |z|
#  		puts z
#  		z.buy_toy(x)
#	end







puts "Choose an option:"

puts "Press 1 to create an animal"
puts "Press 2 to create a client"
puts "Press 3 to quit"



gets.chomp












#puts "ANIMALS:"
#  	shelter["animals"].each do |a|
#    	puts "Animals: #{ shelter["animals"] }"
#    	puts a
#    end	
   
#  puts "CLIENTS:"
#  	shelter["shelter_clients"].each do |c|
#    	puts c
#    	c.add_shelterclient
#	end