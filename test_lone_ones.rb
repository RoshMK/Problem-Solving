require 'minitest/autorun'
require_relative 'lone_1'

class TestLoneOnes < Minitest::Test

    def setup
        @lo = LoneOnes.new
    end

    def test_number_of_ones
        assert_equal 5, @lo.countones("101010101")
        assert_equal 0, @lo.countones("111111")
        assert_equal 2, @lo.countones("1000001")
        assert_equal 1, @lo.countones("11001")
    end
end 