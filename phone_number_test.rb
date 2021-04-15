require 'minitest/autorun'
require_relative 'phone_number'

class PhoneNumberTEST < Minitest::Test

    def test_minitestobj
        @phnum = PhoneNumber.new
    end        

    def test_validate_correct_format
        assert @phnum.phon_num("(702) 555-9079")
    end

    def test_invalidate_less_digits
        refute @phnum.phon_num("(702) 555-9079")
    end

    def test_invalidate_not_digits
        refute @phnum.phon_num("(702) 555-9079")
    end

    def test_invalidate_more_digits
        refute @phnum.phon_num("(702) 555-9079")
    end

    def test_invalidate_no_brackets
        refute @phnum.phon_num("(702) 555-9079")
    end

    def test_invalidate_no_dash
        refute @phnum.phon_num("(702) 555-9079")
    end

    def invalidate_misplaced_bracket
        refute @phnum.phon_num("(702) 555-9079")
    end

    def test_invalidate_misplaced_dash
        refute @phnum.phon_num("(702) 555-9079")
    end

    def test_invalidate_misplaced_spaces
        refute @phnum.phon_num("(702) 555-9079")
    end
end

