
def rec(s,cnt)
    if s == ""
      return cnt 
    end
    a = s.chr
    s.reverse!
    s.chop!
    cnt += 1


    rec(s,cnt)
  end
  g = 0
  print "Enter a string :"
  strng = gets.chomp
  strng.delete!(" ")
  c = rec(strng,g)
  puts " Lenght of string is #{c}"
 