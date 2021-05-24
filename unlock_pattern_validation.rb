class PatternValidation

  def pvalid(arr)
    len = arr.length
    two = 0
    four = 0
    five = 0
    six = 0
    eight = 0
    for i in 0...len
      for j in (i + 1)...len
        return false if arr[i] == arr[j]
      end
      next if i == (len - 1)
      case arr[i]
      when 1
        next if two == 1 && arr[i + 1] == 3
        next if four == 1 && arr[i + 1] == 7
        next if five == 1 && arr[i + 1] == 9
        return false if arr[i + 1] != 2 && arr[i + 1] != 4 && arr[i + 1] != 5
      when 2
        two = 1
        next if five == 1 && arr[i +1 ] == 8
        return false if arr[i + 1] != 1 && arr[i + 1] != 4 && arr[i + 1] != 5 && arr[i + 1] != 6 && arr[i + 1] != 3
      when 3
        next if two == 1 && arr[i + 1] == 1
        next if five == 1 && arr[i + 1] == 7
        next if four == 1 && arr[i + 1] == 9
        return false if arr[i + 1] != 2 && arr[i + 1] != 5 && arr[i + 1] != 6
      when 4
        four = 1
        next if five == 1 && arr[i + 1] == 6
        return false if arr[i + 1] != 1 && arr[i + 1] != 2 && arr[i + 1] != 5 && arr[i + 1] != 8 && arr[i + 1] != 7
      when 5
        five = 1
      when 6
        six = 1
        next if five == 1 && arr[i + 1] == 4
        return false if arr[i + 1] != 3 && arr[i + 1] != 2 && arr[i + 1] != 5 && arr[i + 1] != 8 && arr[i + 1] != 9
      when 7
        next if four == 1 && arr[i + 1] == 1
        next if five == 1 && arr[i + 1] == 3
        next if eight == 1 && arr[i + 1] == 9
        return false if arr[i + 1] != 4 && arr[i + 1] != 5 && arr[i + 1] != 8
      when 8
        eight = 1
        next if five == 1 && arr[i+1] == 2
        return false if arr[i + 1] != 7 && arr[i + 1] != 4 && arr[i + 1] != 5 && arr[i + 1] != 6 && arr[i + 1] != 9
      when 9
        next if six == 1 && arr[i + 1] == 3
        next if five == 1 && arr[i + 1] == 1
        next if eight == 1 && arr[i + 1] == 7
        return false if arr[i + 1] != 8 && arr[i + 1] != 5 && arr[i + 1] != 6
      end
    end
    return true
  end
    
end

require 'minitest/autorun'

class Test_PatternValidation < Minitest::Test

    def setup
        @upv = PatternValidation.new
    end

    def test_strike1
        assert_equal true, @upv.pvalid([5,2,3,6])
    end

    def test_strike2
        assert_equal false, @upv.pvalid([5,2,3,9])
    end

    def test_strike3
        assert_equal true, @upv.pvalid([5,2,3,6,4])
    end

    def test_strike4
        assert_equal true, @upv.pvalid([8,5,6,4])
    end

    def test_strike5
        assert_equal true, @upv.pvalid([1,5,9,6,4,2,8,7,3])
    end

    def test_strike6
        assert_equal false, @upv.pvalid([1,5,2,4,9])
    end

    def test_strike7
        assert_equal false, @upv.pvalid([1,2,3,9,5,4,6])
    end

    def test_strike3
        assert_equal true, @upv.pvalid([2,5,8,7])
    end
end