class FilledBoxPerc
    def prcnt(ar)
        rows = ar.length
        columns = ar[0].length
        count = 0
        print "\n"
        for i in 0...rows
            a1 = ar[i].split("")
            if i == 0
                col = columns + 2
                while (col > 0 ) 
                    print"*" 
                    col -= 1
                end
            end
            for j in 0...columns
                print "\n*" if j == 0
                if a1[j] == "0"
                    count += 1
                    print "0"
                else 
                    print " "
                end
                print "*" if j == columns - 1
            end
            if i == rows - 1
                col = columns + 2
                print "\n"
                while (col > 0 ) 
                    print "*" 
                    col -= 1
                end
            end
        end
        total = rows * columns
        percentage = (count * 100) / total
        puts ""
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
        assert_equal 25, @perc.prcnt(["0___"])
    end

    def test_perc_1_column
        assert_equal 25, @perc.prcnt(["_","_","0","_"])
    end

    def test_perc_1X1
        assert_equal 100, @perc.prcnt(["0"])
    end

    def test_perc_0
        assert_equal 0, @perc.prcnt(["___","___"])
    end

    def test_perc_random
        assert_equal 43, @perc.prcnt(["__0_0","00___","0__00","00000","_____","____0"])
    end
end