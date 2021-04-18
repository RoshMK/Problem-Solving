require 'minitest/autorun'
require_relative 'is_everywhere'

class Test_is_everywhere < Minitest::Test

    def setup
        @iseve = IsEverywhere.new
    end

    def test_nxt_alph
        assert_equal false, @iseve.isevery([1,2,1,1,2,2,2],2)
        assert_equal true, @iseve.isevery([1,2,1,2,2],2)
    end
end 