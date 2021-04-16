require 'minitest/autorun'
require_relative 'word_sorting'

class TestWordSort < Minitest::Test

    def setup
        @wsrt = WordSort.new
    end

    def test_with_lenght
        assert_equal " i am who", @wsrt.wsort("who am i")
    end

    def test_with_aplha
        assert_equal " a e i o u are the vowels", @wsrt.wsort("the vowels are a e i o u")
    end
end