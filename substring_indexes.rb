class SubstringIndexes

  def subindex(str,arr)
    print "\n"
    p arr
    p str
    len = arr.length
    tmp = []
    a = 0
    i = 0
    j = 1
    while (a < (len * (len - 1)))
      next if i == j
      tmp[a] = arr[i]+arr[j]
      j += 1
      a += 1
      if j == len
        j = 0
        i += 1
      end
    end
    p tmp
    l = tmp[0].length
    ind = []
    i = 0
    tmp.each do |n|
      st = str
      z = 0
      len = st.length
      while (st.include?(n))
        ind[i] = st.index(n) 
        st = st[(ind[i] + l),len]
        ind[i] = ind[i] + l + ind[i - 1] if z == 1
        i += 1
        z = 1
      end
    end
    ind.sort!
    p ind
  end
    
end

require 'minitest/autorun'

class Test_SubstringIndexes < Minitest::Test

    def setup
        @sub = SubstringIndexes.new
    end

    def test_strike1
        assert_equal [0,6,17,20,23], @sub.subindex("dogcatcatdogcodeccatdogcatdog",["cat","dog"])
    end

    def test_strike2
        assert_equal [], @sub.subindex("tdrfytfvhgvjfdoccatdcrdhhgcatdo",["cat","dog"])
    end
end  