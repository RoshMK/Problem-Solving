puts "Enter a sentance to sort"
strng =gets.chomp
s_ary = strng.split(" ")
a = s_ary.length
for i in 0...a
  for j in 0...a
    if s_ary[i].length < s_ary[j].length
      b = s_ary[i]
      s_ary[i] = s_ary[j]
      s_ary[j] = b
    elsif s_ary[i].length == s_ary[j].length
      if s_ary[i] < s_ary[j]
        b = s_ary[i]
        s_ary[i] = s_ary[j]
        s_ary[j] = b
      end
    end
  end
end
s = ""
s_ary.each { |n| s.concat(" #{n}") }
puts "#{s}"