class HeadlineHash

  def hashtags(str)
    print "\n"
    arr = str.split(" ")
    len = arr.length
    pos = []
    a = [0]
    for i in 0...len
      b = arr[i].scan(/\W/)
      d = b.to_s
      c = arr[i]
      c.delete!(d)
      pos[i] = c.length
    end
    pos.sort!
    pos.reverse!
    i = 0
    j = 0
    until(a.length == len)
      if pos[j] == arr[i].length
        a[j] = arr[i].downcase
        arr[i] = ""
        j += 1
        i = 0
        next
      end
      i += 1
    end
    p a[0,3]
    return a[0,3]
  end
    
end

require 'minitest/autorun'

class Test_HeadlineHash < Minitest::Test

    def setup
        @tags = HeadlineHash.new
    end

    def test_strike1
        assert_equal ["avocado", "became", "global"], @tags.hashtags("How, the Avocado Became the Fruit of the Global Trade")
    end

    def test_strike2
        assert_equal ["christmas", "probably", "will"], @tags.hashtags("Why: You Will Probably Pay More for Your Christmas Tree This Year")
    end

    def test_strike3
        assert_equal ["surprise", "parents", "fruit"], @tags.hashtags("Hey' Parents, Surprise, Fruit Juice Is Not Fruit")
    end

    def test_strike4
        assert_equal ["visualizing", "science"], @tags.hashtags("Visualizing: Science")
    end
end