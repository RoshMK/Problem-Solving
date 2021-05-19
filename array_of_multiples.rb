class ArrayOfMultiples
    
  def armul(num,len)
    print "\n"
    array = []
    for i in 1..len
        array[i -1 ] = num * i
    end
    p array
    return array
  end
end

require 'minitest/autorun'

class Test_ArrayOfMultiples < Minitest::Test
    
  def setup
      @am = ArrayOfMultiples.new
  end

  def test_strike_1
      assert_equal [5,10,15,20,25,30,35,40], @am.armul(5,8)
  end    
  
  def test_strike_2
      assert_equal [111,222,333,444], @am.armul(111,4)
  end

  def test_strike_3
      assert_equal [-2,-4,-6,-8,-10,-12], @am.armul(-2,6)
  end
end