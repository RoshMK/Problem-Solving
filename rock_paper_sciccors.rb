class RockPaperScissors

  def game(arr)
    puts "\n"
    abigail = 0
    benson = 0
    tie = 0
    arr.each do |a|
      throw = a
      if throw[0] == 'R' && throw[1] == 'P'
        benson += 1
      elsif throw[0] == 'R' && throw[1] == 'S'
        abigail += 1
      elsif throw[0] == 'P' && throw[1] == 'S'
        benson += 1
      elsif throw[0] == 'P' && throw[1] == 'R'
        abigail += 1
      elsif throw[0] == 'S' && throw[1] == 'R'
        benson +=1
      else
        abigail += 1
      end
    end

    return 'Abigail' if abigail > benson

    return 'Benson' if abigail < benson

    return 'Tie'
  end
end

require 'minitest/autorun'

class Test_RockPaperScissors < Minitest::Test

  def setup
    @rpc = RockPaperScissors.new
  end

  def test_strike_1
    assert_equal 'Abigail', @rpc.game([['R', 'P'], ['R', 'S'], ['S', 'P']])
  end

  def test_strike_2
    assert_equal 'Benson', @rpc.game([['R', 'P'], ['R', 'R'], ['S', 'R']])
  end

  def test_strike_3
    assert_equal 'Tie', @rpc.game([['R', 'P'], ['R', 'S'], ['S', 'P'],['P','S']])
  end

  def test_strike_4
    assert_equal 'Abigail', @rpc.game([['R', 'R'], ['S', 'S'], ['S', 'P']])
  end
end