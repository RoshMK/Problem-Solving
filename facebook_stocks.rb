class FacebookStocks

  def stocks(st)
    print "\n"
    len = st.length
    diff = 0
    buy = []
    sell = []
    pos = 0
    prof = 0
    for i in 0...len
      for j in (i + 1)...len
        diff = st[j] - st[i]
        if diff >= prof
          prof = diff
          buy = st[i]
          sell = st[j]
          pos += 1
        end
      end
    end
    #for i in 0...pos
    puts "Buy stock at #{buy} and sell at #{sell} gives a profit #{prof} "
    #end
    return buy
  end
    
end

require 'minitest/autorun'

class Test_FacebookStocks < Minitest::Test

    def setup
        @fb = FacebookStocks.new
    end

    def test_strike1
        assert_equal 5, @fb.stocks([9, 11, 8, 5, 7, 10])
    end

    def test_strike2
        assert_equal 2, @fb.stocks([9, 11, 8, 2, 5, 7, 30, 10])
    end
    
end