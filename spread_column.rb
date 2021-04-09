puts "Enter your SpreadSheet column "
a = gets.chomp
l = a.length
t = 26 * (l - 1)
s = 1
case  a[l - 1].downcase
when "a" then s = t + 1
when "b" then s = t + 2
when "c" then s = t + 3
when "d" then s = t + 4
when "e" then s = t + 5
when "f" then s = t + 6
when "g" then s = t + 7
when "h" then s = t + 8
when "i" then s = t + 9
when "j" then s = t + 10
when "k" then s = t + 11
when "l" then s = t + 12
when "m" then s = t + 13
when "n" then s = t + 14
when "o" then s = t + 15
when "p" then s = t + 16
when "q" then s = t + 17
when "r" then s = t + 18
when "s" then s = t + 19
when "t" then s = t + 20
when "u" then s = t + 21
when "v" then s = t + 22
when "w" then s = t + 23
when "x" then s = t + 24
when "y" then s = t + 25
when "z" then s = t + 26
end
puts " #{a} gives anumerical value of #{s} "