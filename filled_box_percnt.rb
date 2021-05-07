class FilledBoxPerc
  def prcnt(ar)
    rows = ar.length
    columns = ar[0].length
    count = 0
    print "\n"

    ar.each do |i|
      p i
      a1 = i.split('')
      a1.each { |j| count += 1 if j == '0' }
    end

    total = (rows - 2) * (columns - 2)
    percentage = (count * 100) / total
    puts "Box is #{percentage}% filled with zeros"
    return percentage
  end
end

require 'minitest/autorun'

class TestFilledBoxPerc < Minitest::Test

  def setup
    @perc = FilledBoxPerc.new
  end

  def test_perc_1_row
    assert_equal 25, @perc.prcnt(['******', '*0   *', '******'])
  end

  def test_perc_1_column
    assert_equal 25, @perc.prcnt(['***', '* *', '* *', '*0*', '* *', '***'])
  end

  def test_perc_1X1
    assert_equal 100, @perc.prcnt(['***', '*0*', '***'])
  end

  def test_perc_0
    assert_equal 0, @perc.prcnt(['*****', '*   *', '*   *', '*****'])
  end

  def test_perc_random
    assert_equal 43, @perc.prcnt(['*******', '*  0 0*', '*00   *', '*0  00*', '*00000*', '*     *', '*    0*', '*******'])
  end
end