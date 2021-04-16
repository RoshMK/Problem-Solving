=begin
puts "Enter an array of numbers and enter '!' to end array"
a = "#"
num = []
b = 0
# receving numbers
while a == "#"
 c =  gets.chomp
 if c != "!"
    num[b] = c.to_i
    b += 1
 else
    a = c
 end
end
=end
class SharingNumbers

  def shar(num,b)
    d = num[0]
    e = 0
    f = []
    g = 0
    sum = 0
    #finding smallest value
    for i in 1...b
      if d > num [i]
        d = num[i] 
      end
    end
    #sum of 25% of rest of numbers
    for i in 0...b
      if num[i] != d
        e = num[i]*0.25
        num[i] -= e
        sum += e
      else #incase the smallest value appears more than once
        f[g] = i
        g += 1
      end
    end
    # adding the sum to all repetation of the smallest value
    for i in 0...g
      num[f[i]] += sum
    end
    puts"#{num}"
    return num
  end
end