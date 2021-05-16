class Coingame

  def coin(arr)

    print "\n\n"
    sum = 0
    check = 0
    p arr
    while(!arr.empty?)
      i = arr.length
      if arr[0] > arr[i - 1]
        large = arr[0]
        arr.shift
      else
        large = arr[i - 1]
        arr.pop
      end
      if check.zero?
        check = 1
        sum += large
      else
        check = 0
        next
      end

    end
    p "Expected sum =  #{sum}"
    return sum
  end

end

require 'minitest/autorun'

class TestCoingame < Minitest::Test

  def setup
    @gm = Coingame.new
  end

  def test_strike1
    assert_equal 18, @gm.coin([5,1,9,4,2,7])
  end

  def test_strike2
    assert_equal 425, @gm.coin([10, 7, 76, 415])
  end

  def test_strike3
    assert_equal 767, @gm.coin([5,54,57,74,684,35,21])
  end
end