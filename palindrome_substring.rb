class PalindromeSubstring

  def palindrome(str)
    print "\n"
    arr = str.split("")
    len = arr.length
    check = 0
    i = 0
    j = len - 1
    rept = 0
    while check < (len - 2)
      j = (rept + (len - check)) - 1
      palin = 0
      for i in rept...(len - check)
        if arr[i] != arr[j]
          rept += 1
          break
        end
        j -= 1
      end
      if  i == ((len - check) - 1)
        puts "Largest palindrome substring is : '#{str[rept,(len - check)]}' "
        return str[rept,(len - check)]
        break
      elsif rept == (check + 1)
        rept = 0
        check += 1
      end
    end
  end
    
end

require 'minitest/autorun'

class Test_PalindromeSubsring < Minitest::Test

    def setup
        @pal = PalindromeSubstring.new
    end

    def test_strike1
        assert_equal "bcdcb", @pal.palindrome("aabcdcb")
    end

    def test_strike2
        assert_equal "malayalam", @pal.palindrome("aabmalayalamcdcb")
    end
end