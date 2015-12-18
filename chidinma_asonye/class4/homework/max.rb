array = [8483, 2573, 10, 77777, 381]


def find_max(array)
	max = array.sample

	array.each do |num|
		if num > max
			max = num
		end
	end	

	return max
	
end

puts find_max(array)
