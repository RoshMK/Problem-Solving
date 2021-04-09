puts "An array of integers and enter '!' to stop entering more values"
ch = 0
pro = []
n = 0
while ch != "!"
  ch = gets.chomp
  if ch != "!"
    pro[n] = ch.to_i
    if pro[n] < 0
      pro[n] *= -1
    end
    n += 1
  end
end
pro.sort!
pro.reverse!
lp = pro[0] * pro[1] * pro[2]
puts "Largest product obtained from given array integers is #{lp}. "