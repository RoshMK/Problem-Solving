class MatchingBrackets

  def brackets(str)
    print"\n"
    arr = str.split("")
    len = arr.length
    p arr
    return false if (len % 2) != 0
    tmp = []
    for i in 0...len
      case arr[i]
      when "{" then tmp[i] = 1
      when "}" then tmp[i] = 1
      when "[" then tmp[i] = 2
      when "]" then tmp[i] = 2
      when "(" then tmp[i] = 3
      when ")" then tmp[i] = 3
      end
    end
    
    for i in 0...(len / 2)
      return false if tmp[i] != tmp[(len - 1) - i]
    end
    return true
  end

end

require 'minitest/autorun'

class Test_MatchingBrackets < Minitest::Test

    def setup
        @mb = MatchingBrackets.new
    end

    def test_strike1
        assert_equal true, @mb.brackets("({{[]}})")
    end

    def test_strike2
        assert_equal false, @mb.brackets("({{[}})")
    end

    def test_strike3
        assert_equal false, @mb.brackets("({{[")
    end

    def test_strike4
        assert_equal false, @mb.brackets("({{[]}])")
    end
end