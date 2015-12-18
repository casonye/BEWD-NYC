'''singers = ["Whitney Houston", "Mariah Carey", "Michael Jackson", "Beyonce", "Adele"]
	singers.each do |peeps|
	puts peeps.upcase
end'''

'''animals = {"moose" => "moose", "sheep" => "sheep", "dog" => "dogs", "walrus" => "walruses", "mouse" => "mice"}
	animals.each do |k, v|
	puts " #{k.upcase}: #{k.capitalize }"
end'''

countries = [ 
	{"name" => "Sweden", "languages" => ["Swedish", "English"]}, 
	{"name" => "Japan", "languages" => ["Japanese"]}, 
	{"name" => "Switzerland", "languages" => ["Swiss", "English"]}, 
	{"name" => "India", "languages" => ["Punjabi", "Hindi", "English"]}  ]
	
countries.each do |country|
	puts "Languages spoken in #{country["name"].upcase}:"
	country["languages"].each do |languages|
		puts languages.capitalize
	end
end 	
