require 'minitest/autorun'
require_relative 'rec_fact'

class TestRecFact < Minitest::Test

    def setup
        @rfact = RecFactorial.new
    end

    def test_nxt_alph
        assert_equal 6, @rfact.fact(3)
        assert_equal 120, @rfact.fact(5)
        assert_equal 1, @rfact.fact(1)
    end
end 