=begin
puts "Enter an array of elements with any number of ocurences and enter '!' to end array"
a = "#"
arr = []
b = 0
#Entering array element
while a == "#"
 c =  gets.chomp
 if c != "!"
    arr[b] = c
    b += 1
 else
    a = c
 end
end
#occurances count

puts "Enter the number of ocurences for elements in array"
z = gets.chomp
occ = z.to_i
=end


class DeletingOccurrences
  def del(arr,occ)
    b = arr.length
    pos = []
    check = ""
    for i in 0...b
      check = arr[i]
      cnt = 0
      s = 0
  
      for j in 0...b
        if check == arr [j]
          pos[cnt] = j
          cnt += 1
        end
      end

      while cnt > occ
        arr.delete_at(pos[cnt - 1])
        cnt -= 1
      end
    end
    puts"#{arr}" 
    return arr
  end
end