require "minitest/autorun"
require_relative "encode.rb"
class TestTest < Minitest::Test

	def test_assert_1_equals_1
		assert_equal(1, 1)
	end

	def test_encode_returns_sting
		assert_equal(Array, roman_encode([""]).class)
	end
	def test_encode_shifts_by_5
		assert_equal(["f"], roman_encode(["a"]))
	end
	def test_encode_shifts_2_letters_by_5
		assert_equal(["fg"], roman_encode(["ab"]))
	end
	def test_decode_unshifts
	    assert_equal(["ab"], roman_decode(["fg"])) 
	end
	def test_complex_encode_decode
		some_message = "kill"
		assert_equal(["pnqq"], roman_encode([some_message]))
		assert_equal(["kill"], roman_decode(["pnqq"]))
	end
end