=begin
puts " enter a string"
s = gets.chomp
s.downcase!
l = s.length
=end

class NextAlph
  def next_alph(str) 
    len = str.length
    str.downcase!
    su = ""
    le = 0
    while le < len
      a = str[le]
      case a
        when "a" then su += "b"
        when "b" then su += "c"
        when "c" then su += "d"
        when "d" then su += "e"
        when "e" then su += "f"
        when "f" then su += "g"
        when "g" then su += "h"
        when "h" then su += "i"
        when "i" then su += "j"
        when "j" then su += "k"
        when "k" then su += "l"
        when "l" then su += "m"
        when "m" then su += "n"
        when "n" then su += "o"
        when "o" then su += "p"
        when "p" then su += "q"
        when "q" then su += "r"
        when "r" then su += "s"
        when "s" then su += "t"
        when "t" then su += "u"
        when "u" then su += "v"
        when "v" then su += "w"
        when "w" then su += "x"
        when "x" then su += "y"
        when "y" then su += "z"
        when "z" then su += "z"
        else su = "invalid character found, please remove it and try again"  
      end
      le += 1
    end
      return su
  end
end
#st = ""
#s_final = next_alph(s,st,l)
#puts "#{s_final}" 