num = 1

while num <=100
	
	if num % 15 == 0
		puts "FizzBuzz"
		num +=1
	
	elsif num % 5 == 0
		puts "Buzz"
		num +=1
	elsif num % 3 == 0
		puts "Fizz"
		num +=1
	
	else
		puts num 
		num +=1

	end

end