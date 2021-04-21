class CanBalance
  
  def balcheck(arr)
    print "\n"
    len = arr.length
    l = len
    mid = (len - 1) / 2
    s1 = 0
    s2 = 0
    while l >= 0 
      
      for i in 0..mid
        s1 += arr[i]
      end
      
      for i in (mid + 1)...len  
        s2 += arr[i]
      end
      
      if s1 == s2
        
        return true
      elsif s1 > s2
        s1 = 0
        s2 = 0
        mid -= 1
      else 
        s1 = 0
        s2 = 0
        mid += 1
      end
      l -= 1
    end
    return false
  end
    
end
require 'minitest/autorun'

class Test_CanBalance < Minitest::Test
    
    def setup
        @cb = CanBalance.new
    end

    def test_strike_1
        assert_equal true, @cb.balcheck([1,1,1,1])
    end    

    def test_strike_2
        assert_equal false, @cb.balcheck([1,1,1,1,1])
    end  

    def test_strike_3
        assert_equal true, @cb.balcheck([1,1,1,3])
    end  

    def test_strike_4
        assert_equal true, @cb.balcheck([10,55,1,20,4,30,9,1])
    end  

    def test_strike_5
        assert_equal false, @cb.balcheck([10,55,20,4,30,2])
    end  

    def test_strike_6
        assert_equal true, @cb.balcheck([55,20,4,15,1,4,1,10])
        assert_equal true, @cb.balcheck([55,20,4,15,1,4,1,10,110])
    end  
end