require 'minitest/autorun'
require_relative 'deleting_occurrences'

class TestDeletingOccurences < Minitest::Test

    def setup
        @dilocc = DeletingOccurrences.new
    end

    def test_deleting_occurences
        assert_equal [2,2,5,9,98,5,7], @dilocc.del([2,2,5,9,98,5,7,5],2)
        assert_equal [98,98,98], @dilocc.del([98,98,98,98,98,98,98,98],3)
        assert_equal [12,45,98], @dilocc.del([12,45,12,45,12,98,98,98,45,12],1)
    end
end