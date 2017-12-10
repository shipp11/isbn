require "minitest/autorun"
require_relative "isbn.rb"
class TestIsbn < Minitest::Test


    def test_assert_that_1_equals_1
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

	def test_assert_that_10_digit_nums_are_valid
		my_number = 1234567891
		assert_equal("valid", isbn_length(my_number))
	end

	def test_assert_that_number_with_greater_that_10_digits_is_valid
		my_number = 1234567891
		assert_equal("valid", isbn_length(my_number))
	end

	def test_assert_that_number_with_less_than_10_digits_is_invalid
		my_number = 123456789
		assert_equal("invalid", isbn_length(my_number))
	end

	def test_assert_that_number_w_13_digits_is_valid
		my_number = 1234567890123
		assert_equal("valid", isbn_length(my_number))
	end

	def test_assert_that_number_w_less_than_13_digits_is_invalid
		my_number = 123456789012
		assert_equal("invalid", isbn_length(my_number))
	end

	def test_assert_that_number_w_greater_than_13_digits_is_invalid
		my_number = 12345678901234
		assert_equal("invalid", isbn_length(my_number))
	end
end

