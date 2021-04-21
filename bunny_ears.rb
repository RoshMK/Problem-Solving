class BunnyEars
  
  def cnt(a)
    a *= 2
    return a
  end
  
end

require 'minitest/autorun'

class Test_BunnyEars < Minitest::Test
    
    def setup
        @be = BunnyEars.new
    end

    def test_strike_1
        assert_equal 8, @be.cnt(4)
        assert_equal 22, @be.cnt(11)
        assert_equal 0, @be.cnt(0)
        assert_equal 102, @be.cnt(51)
    end    
end