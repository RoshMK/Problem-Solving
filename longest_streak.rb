require 'date'

class LongestStreak

    def streak(arr)
        day = Date.parse(arr[0][:date])
        #puts " #{day} "
        day1 = day.next
        #puts " #{day1} "
        len = arr.length
        count = 1
        streaks = 0
        for i in 1...len
            if day.next == Date.parse(arr[i][:date]) 
                count += 1
                day = Date.parse(arr[i][:date])
         #       puts "count ++ #{count} #{day} "
            elsif streaks < count
                streaks = count
                count = 0
                day = Date.parse(arr[i][:date])
          #      puts "streaks = count  #{day} "
            else
                count = 0
                day = Date.parse(arr[i][:date])
           #     puts "count = 0 #{day} "
            end
            streaks = count if count == len
        end
        puts "Longest streak is #{streaks}"
        return streaks
    end
   
end

require 'minitest/autorun'

class Test_longest_streak < Minitest::Test

    def setup
        @lstreak = LongestStreak.new
    end

    def test_strike1
        assert_equal 3, @lstreak.streak([{:date => "2019-09-18"},{:date => "2019-09-19"},{:date => "2019-09-20"},{:date => "2019-09-26"},{:date => "2019-09-27"},{:date => "2019-09-30"}])
    end

    def test_strike2
        assert_equal 6, @lstreak.streak([{:date => "2019-09-18"},{:date => "2019-09-19"},{:date => "2019-09-20"},{:date => "2019-09-21"},{:date => "2019-09-22"},{:date => "2019-09-23"}])
    end

def test_strike3
        assert_equal 1, @lstreak.streak([{:date => "2019-09-18"},{:date => "2019-10-19"},{:date => "2019-10-22"},{:date => "2019-11-02"},{:date => "2019-09-27"},{:date => "2019-09-01"}])
    end
end