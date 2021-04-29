class SecondLargest

  def second(arr)
    print "\n"
    len = arr.length
    larg = 0 
    seclarg = 0
    for i in 0...len
      if arr[i] > larg
        seclarg = larg
        larg = arr[i]
      elsif arr[i] > seclarg
        seclarg = arr[i]
      end
    end
    return seclarg
  end
    
end

require 'minitest/autorun'

class Test_SecondLargest < Minitest::Test

    def setup
        @sec = SecondLargest.new
    end

    def test_strike1
        assert_equal 7, @sec.second([5,2,7,8])
    end

    def test_strike2
        assert_equal 40, @sec.second([10, 40, 30, 20, 50])
    end

    def test_strike3
        assert_equal 105, @sec.second([25, 143, 89, 13, 105])
    end

    def test_strike4
        assert_equal 23, @sec.second([54, 23, 11, 17, 10])
    end
end