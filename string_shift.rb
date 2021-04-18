=begin
puts"Enter the first string"
s1 = gets.chomp
puts"Enter second string to check if its shifted"
s2 = gets.chomp
=end
class StringShift
  def strshift(s1,s2)
    a1 = s1.split("")
    a2 = s2.split("")
    l1 = a1.length
    l2 = a2.length
    pos = 0
    s = 0
    for i in 0...l1
      if a1.rotate(i) == a2
        pos = i 
        s = 1
      end
    end
    if s == 1
      puts "#{s1} is shifted #{pos} to get #{s2}"
      return true
    else
      puts "#{s2} is not a shifted version of #{s1}"
      return false
    end
  end
end