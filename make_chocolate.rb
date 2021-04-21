class MakeChocolate
  
  def bake(small,large,target)
    print "\n"
    t = 5 * large
    if t >= target
      p "No 1kg bars needed"
      return 0
    end
    t = target - t
    if t <= small
      p "#{t} 1Kg bars needed"
      return t
    end
    p "Not enough bars available"
    return -1
  end
end
require 'minitest/autorun'

class Test_MakeChocolate < Minitest::Test
    
    def setup
        @choco = MakeChocolate.new
    end

    def test_strike_1
        assert_equal 2, @choco.bake(5,2,12)
    end    

    def test_strike_2
        assert_equal 0, @choco.bake(5,3,12)
    end  
    
    def test_strike_3
        assert_equal -1, @choco.bake(5,1,12)
    end 

    def test_strike_4
        assert_equal 6, @choco.bake(9,0,6)
    end 

    def test_strike_5
        assert_equal 0, @choco.bake(5,3,0)
    end 

    def test_strike_6
        assert_equal -1, @choco.bake(0,1,12)
    end 
end