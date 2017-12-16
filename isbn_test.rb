require "minitest/autorun"
require_relative "isbn.rb"
class TestISBN< Minitest::Test

def test_assert_that_1_is_1
	assert_equal(1, 1)
end

def test_assert_that_my_number_is_integer
	my_number = 7894561237
	assert_equal("valid", isbn(my_number))
end

def test_assert_that_strings_are_not_integers
	my_number = "hi"
	assert_equal("invalid", isbn(my_number))
end

def test_assert_that_arrays_are_not_integers
	my_number = ["hi", "bye"]
	assert_equal("invalid", isbn(my_number))
end

def test_assert_that_hashes_are_not_integers
	my_number = {:brit => "awesome", :coffee => "heaven"}
	assert_equal("invalid", isbn(my_number))
end

def test_assert_that_floats_are_not_integers
	my_number = 11.02020202
	assert_equal("invalid", isbn(my_number))
end

def test_assert_that_10_digit_nums_are_valid
	my_number = 1234567891
	assert_equal("valid", isbn_length(my_number))
end

def test_assert_that_number_with_greater_than_10_digits_is_invalid
	my_number = 123456789123
	assert_equal("invalid", isbn_length(my_number))
end

def test_assert_that_number_with_less_than_10_digits_is_invalid
	my_number = 123
	assert_equal("invalid", isbn_length(my_number))
end

def test_assert_that_number_w_13_digits_is_valid
	my_number = 1234567891234
	assert_equal("valid", isbn_length(my_number))
end

def test_assert_that_number_w_less_than_13_digits_is_invalid
	my_number = 123456789
	assert_equal("invalid", isbn_length(my_number))
end

def test_assert_that_number_w_greater_than_13_digits_is_invalid
	my_number = 123456789123456789
	assert_equal("invalid", isbn_length(my_number))
end

def test_assert_that_isbn_is_invalid
	my_number = [1, 1, 1, 1, 1, 1, 1, 1, 1, 7]
	assert_equal("invalid", isbn10_validity(my_number))
end

def test_assert_that_isbn_is_valid
	my_number = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
	assert_equal("valid", isbn10_validity(my_number))
end

def test_assert_that_isbn13_is_invalid
	my_number = [5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 2, 3, 9]
	assert_equal("invalid", isbn13_validity(my_number))
end

def test_assert_that_isbn13_is_valid
	my_number = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8]
	assert_equal("valid", isbn13_validity(my_number))
end
end