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

