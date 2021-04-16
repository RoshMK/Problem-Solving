require 'minitest/autorun'
require_relative 'arranging_array'

class Arrangingarraytest < Minitest::Test

    def setup
        @arr = ArrngingArray.new
    end

    def  test_equal_array_merge
        assert_equal ["a","1","b","2","c","3","d","4"], @arr.mrg_arr(["a","b","c","d"],["1","2","3","4"])
    end

    def  test_larger_charachtter_array_merge
        assert_equal ["a","1","b","2","c","3","d","4","e","f","g"], @arr.mrg_arr(["a","b","c","d","e","f","g"],["1","2","3","4"])
    end

    def  test_larger_number_array_merge
        assert_equal ["a","1","b","2","c","3","d","4","5","6","7"], @arr.mrg_arr(["a","b","c","d"],["1","2","3","4","5","6","7"])
    end
end