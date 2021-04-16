require 'minitest/autorun'
require_relative 'sharing_numbers'

class TestShareNUm < Minitest::Test

    def setup
        @shnum = SharingNumbers.new
    end

    def test_1_small_num
        assert_equal [12,7.5,14.5], @shnum.shar([16,10,8],3)
    end

    def test_more_small_num
        assert_equal [3,3,3,3], @shnum.shar([4,1,4,1],4)
    end
end