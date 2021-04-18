require 'minitest/autorun'
require_relative 'rec_fib'

class TestRecFib < Minitest::Test

    def setup
        @rfib = RecFibanocci.new
    end

    def test_nxt_alph
        assert_equal 0, @rfib.fib(0)
        assert_equal 1, @rfib.fib(1)
        assert_equal 1, @rfib.fib(2)
        assert_equal 8, @rfib.fib(6)
    end
end 