require 'minitest/autorun'
require_relative 'spread_column'

class TestSpreadColumn < Minitest::Test

    def setup
        @ssn = SpreadSheet.new
    end

    def test_nxt_alph
        assert_equal 27, @ssn.spsheet("aa")
        assert_equal 1, @ssn.spsheet("a")
        assert_equal 70, @ssn.spsheet("RRR")
    end
end 