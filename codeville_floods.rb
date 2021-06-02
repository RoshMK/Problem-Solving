class Codeville_floods

  def rescue(pop,max)
    print "\n"
    len = pop.length
    count = 0
    tmp = []
    a = 0
    for i in 0...len
      check = 0
      next if tmp.include?(i)
      if pop[i] >= max
        count += 1 
        next
      end
      for j in (i + 1)...len
        next if tmp.include?(j)
        sum = pop[i] + pop[j]
        if sum <= max
          count += 1
          a += 1
          tmp[a] = j
          check = 1
          break
        end
      end
      count += 1 if check == 0
    end
    p pop
    p "#{count} boats needed."
    return count
  end

end

require 'minitest/autorun'

class Test_codeville < Minitest::Test

    def setup
        @codefloods = Codeville_floods.new
    end

    def test_strike1
        assert_equal 3, @codefloods.rescue([100, 200, 150, 80],200)
    end

    def test_strike2
        assert_equal 5, @codefloods.rescue([100, 200, 150, 80,50,100,300,149,70],250)
    end
end