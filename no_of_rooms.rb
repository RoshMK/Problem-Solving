class NoOfRooms

  def roomcheck(classtime)

    print "\n\n"

    #room_num = Hash.new
    classtime.each_with_index do |n, i|
      for j in (i + 1)...classtime.length
        classtime[i], classtime[j] = classtime[j], classtime[i] if classtime[i][0] > classtime[j][0]
      end
    end

    count = 1
    indx = 0
    timeslot = []
    inx = 0
    v = []
    p classtime

    classtime.each_with_index do |n, i|
      value = n
      for j in (i + 1)...classtime.length

        if value[1] >= classtime[j][0]
          if !timeslot.include?(j)
            indx += 1
            timeslot[indx] = j
            count += 1
          end
        else
          if timeslot.include?(j) && !v.include?(j)
            count -= 1
            inx += 1
            v[inx] = j
          end
          value = classtime[j]
          indx += 1
          timeslot[indx] = j
        end
      end
    end
    p count
  end

end

require 'minitest/autorun'

class TestNoOfRooms < Minitest::Test

  def setup
    @rooms = NoOfRooms.new
  end

  def test_strike1
    assert_equal 2, @rooms.roomcheck([[30, 75], [0, 50], [60, 150]])
  end

  def test_strike2
    assert_equal 4, @rooms.roomcheck([[30, 75], [0, 50], [60, 150], [10, 20], [15, 80], [40, 70]])
  end

  def test_strike3
    assert_equal 3, @rooms.roomcheck([[50, 90], [10, 40], [60, 80], [70, 110], [110, 150], [110, 160]])
  end

end
