class Game24
  
  def game(a)
    
    
end

require 'minitest/autorun'

class Test_Game24 < Minitest::Test

    def setup
        @g24 = Game24.new
    end

    def test_strike1
        assert_equal true, @g24.game([5,2,7,8])
    end
end