#puts "Enter a string to check parity"
#strng = gets.chomp

class LetterParity
  def par(str) 
    str.downcase!
    len = str.length
    su = 0
    le = 0
    while le < len
      a = str.chr
      str.reverse!
      str.chop!
      case a
        when "a" then su += 1
        when "b" then su += 2
        when "c" then su += 3
        when "d" then su += 4
        when "e" then su += 5
        when "f" then su += 6
        when "g" then su += 7
        when "h" then su += 8
        when "i" then su += 9
        when "j" then su += 10
        when "k" then su += 11
        when "l" then su += 12
        when "m" then su += 13
        when "n" then su += 14
        when "o" then su += 15
        when "p" then su += 16
        when "q" then su += 17
        when "r" then su += 18
        when "s" then su += 19
        when "t" then su += 20
        when "u" then su += 21
        when "v" then su += 22
        when "w" then su += 23
        when "x" then su += 24
        when "y" then su += 25
        when "z" then su += 26
        else puts "invalid character found, please remove it and try again"    
      end
      le += 1
    end
    if su % 2 == 0
      puts" True : Even parity"
      return true
    else
      puts" False : odd parity"
      return false
    end
  end
end

# st = LetterParity.new
# st.par(strng)