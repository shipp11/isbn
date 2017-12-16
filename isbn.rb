def isbn(my_number)
	my_number.class
	if my_number.class == Integer
		"valid"
	else
		"invalid"
	end
end

def isbn_length(my_number)
	if my_number.to_s.length == 10 || my_number.to_s.length == 13
		"valid"
	else
		"invalid"
	end
end

def isbn10_validity(my_number)
	ans = 0
	counter = 10
	check_digit = my_number[9]
	my_number.each do |num|
		counter -= 1
		ans += num * counter
	end
		if ans % 11 == check_digit
			return "valid"
		else
			return "invalid"
		end
end

def isbn13_validity(my_number)
	ans = 0
	my_number.each_with_index do |num, idx|
		if idx % 2 == 0 
			ans += num * 3
		elsif 
			ans += num * 1
		end
	end
	ans = ans % 10 
	ans = 10 - ans


	if ans == my_number[12]
		return "valid"
	else
		return "invalid"
	end
end	