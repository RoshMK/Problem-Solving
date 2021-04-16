=begin 
puts"Enter a number for counting lone ones"
a = gets.chomp
num = []
=end
class LoneOnes
  def countones (a)
    num = a.split("")
    a = num.length
    count = 0
    puts "#{num}"
=begin if num[0] == "1" && num[1] != "1"
  count +=1
else 
  count = 0
=end
    count = 0
    if num[0] == "1" && num[1] != "1"
      count = 1
    end

    for i in 1..a
      if num[i] == "1" && num[i-1] != "1" && num[i+1] != "1"
        count += 1
      end
    end

    puts"Lone one count: #{count} "
    return count
  end
end