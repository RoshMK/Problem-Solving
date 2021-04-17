require 'minitest/autorun'
require_relative 'rec_strcnt'

class TestRecursiveStringCount < Minitest::Test

    def setup
        @rst = RecStr.new
    end

    def test_rec_str_snt
        assert_equal 5, @rst.stcnt("hello")
        assert_equal 0, @rst.stcnt("")
        assert_equal 12, @rst.stcnt("bombay dreams")
    end
end 