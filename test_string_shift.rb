require 'minitest/autorun'
require_relative 'string_shift'

class TestStringShift < Minitest::Test

    def setup
        @ss = StringShift.new
    end

    def test_nxt_alph
        assert_equal true, @ss.strshift("abcde","cdeab")
        assert_equal true, @ss.strshift("xyz","yzx")
        assert_equal false, @ss.strshift("abcd","dbac")
    end
end 