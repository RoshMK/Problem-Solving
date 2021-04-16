require 'minitest/autorun'
require_relative 'phone_number'

class PhoneNumberTEST < Minitest::Test

    def setup
        @phnum = PhoneNumber.new
    end        

    def test_phonenumber
        assert_equal true, @phnum.phon_num("(125) 456-7896")
    end
    
    def test_less_number
        assert_equal false, @phnum.phon_num("(702) 55-9079")
    end

    def test_not_digits
        assert_equal false, @phnum.phon_num("(702) ab5-9079")
    end

    def test_more_numbers
        assert_equal false, @phnum.phon_num("(702) 55875-9079")
    end

    def test_bracket_missing
        assert_equal false, @phnum.phon_num("(702 555-9079")
    end

    def test_dash_missing
        assert_equal false, @phnum.phon_num("(702) 555 9079")
    end

    def test_bracket_misplaced
        assert_equal false, @phnum.phon_num("702 (555)-9079")
    end

    def test_dash_misplaced
        assert_equal false, @phnum.phon_num("(702)-555 9079")
    end
end