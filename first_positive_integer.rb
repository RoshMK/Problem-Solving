class FirstPostiveInteger
  
  def fpi(arr)
    print "\n"
    tmp = 0
    i = 1
    while(tmp == 0)
      if arr.include?(i)
        i += 1
      else
        return i
        break
      end
    end 
  end

end

require 'minitest/autorun'

class Test_FirstPositveIntegre < Minitest::Test

  def setup
    @fi = FirstPostiveInteger.new
  end

  def test_strike_1
    assert_equal 1, @fi.fpi([12,4,7,5,2,0,0,2,4,-1,-7,4,5,7,-2,-1,-1])
    assert_equal 16, @fi.fpi([12,1,2,3,4,5,6,7,8,9,10,13,14,1,15,19,15,11])
    assert_equal 1, @fi.fpi([12,-1,-8,-159,-78,-1,0,87,12])
    assert_equal 1, @fi.fpi([-1,-8,-88,-8,-1])
    assert_equal 3, @fi.fpi([12,4,7,5,2,0,0,2,4,1,-1,-7,4,5,7,-2,-1,-1])
  end
end