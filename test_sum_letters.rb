require 'minitest/autorun'
require_relative 'sum_letters'

class TestParity < Minitest::Test

    def setup
        @psl = LetterParity.new
    end

    def test_parity_sum
        assert_equal true, @psl.par("abcd")
        assert_equal true, @psl.par("abc")
        assert_equal true, @psl.par("ac")
        assert_equal false, @psl.par("a")
        assert_equal false, @psl.par("bcdfh")
    end
end