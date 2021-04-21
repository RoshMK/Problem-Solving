class RockPaperScissors

    def game(arr)
        puts "\n"
        len = arr.length
        tie = 0
        abigail = 0
        benson = 0
        winner = ""
        for i in 0...len
            throw = arr[i]
            if throw[0] == "R" && throw[1] == "R"
                tie += 1
            elsif throw[0] == "R" && throw[1] == "P"
                benson += 1
            elsif throw[0] == "R" && throw[1] == "S"    
                abigail += 1
            elsif throw[0] == "P" && throw[1] == "P"
                tie += 1
            elsif throw[0] == "P" && throw[1] == "S"
                benson += 1
            elsif throw[0] == "P" && throw[1] == "R"
                abigail += 1
            elsif throw[0] == "S" && throw[1] == "S"
                tie += 1
            elsif throw[0] == "S" && throw[1] == "R"
                benson +=1
            else 
                abigail += 1
            end
        end
        if abigail == benson || (tie > abigail && tie > benson)
            puts "Tie between Abigail and Benson"
            winner = "Tie"
            return winner
        elsif abigail > benson
            puts "Abigail is the winner"
            winner = "Abigail"
            return winner
        else
            puts "Benson is the winner"
            winner = "Benson"
            return winner
        end
    end
end

require 'minitest/autorun'

class Test_RockPaperScissors < Minitest::Test
    
    def setup
        @rpc = RockPaperScissors.new
    end

    def test_strike_1
        assert_equal "Abigail", @rpc.game([["R", "P"], ["R", "S"], ["S", "P"]])
    end    

    def test_strike_2
        assert_equal "Benson", @rpc.game([["R", "P"], ["R", "R"], ["S", "R"]])
    end 

    def test_strike_3
        assert_equal "Tie", @rpc.game([["R", "P"], ["R", "S"], ["S", "P"],["P","S"]])
    end 

    def test_strike_4
        assert_equal "Tie", @rpc.game([["R", "R"], ["S", "S"], ["S", "P"]])
    end 
end