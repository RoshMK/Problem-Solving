class ZipZap
  def zxp(str)
    print "\n"
    st = ""
    arr = str.split("")
    len = arr.length
    i = 0
    while len > 0
      if arr[i] == "z" && arr[i + 2] == "p"
        st.concat("zp")
        i += 3
        len -= 3
      else
        st.concat(arr[i])
        i += 1
        len -= 1
      end
    end
    p st
    return st
  end
end
require 'minitest/autorun'

class Test_ZipZap < Minitest::Test

  def setup
    @zp = ZipZap.new
  end

  def test_strike_1
    assert_equal "zpXzp", @zp.zxp("zipXzap")
  end

  def test_strike_2
    assert_equal "zpzpzpzpzp", @zp.zxp("zipzopzxpzdpzap")
  end

  def test_strike_3
    assert_equal "ziabop", @zp.zxp("ziabop")
  end

  def test_strike_4
    assert_equal "zzzzzzzpzzzzzzzzpzzzz", @zp.zxp("zzzzzzzopzzzzzzzzipzzzz")
  end

end