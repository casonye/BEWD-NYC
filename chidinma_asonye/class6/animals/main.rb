require_relative 'lib/cat.rb'
require_relative 'lib/dog.rb'

a = Cat.new("milo", "american shorthair", "10", "short")
b = Cat.new("tigger", "tabby", "20", "long")
c = Cat.new("leo", "siamese", "15", "short")

d = Dog.new("fido", "german shepard", "50", "very short")
e = Dog.new("snoopy", "beagle", "20", "buzzcut")
f = Dog.new("goofy", "giant poodle", "100", "curly")

cats = [a, b, c]
dogs = [d, e, f]

	cats.each do |feline|
		puts feline
		feline.talk
		feline.reproduction
		feline.stalk
		feline.pounce
		feline.neutralize_threat
	end

	dogs.each do |canine|
		puts canine
		canine.talk
	end	


