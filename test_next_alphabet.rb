require 'minitest/autorun'
require_relative 'next_alphabet'

class TestNextAlphabet < Minitest::Test

    def setup
        @nalph = NextAlph.new
    end

    def test_nxt_alph
        assert_equal "bcde", @nalph.next_alph("abcd")
        assert_equal "zyx", @nalph.next_alph("yxw")
        assert_equal "bzcydxe", @nalph.next_alph("aybxcwd")
    end
end 