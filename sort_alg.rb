puts "An array of integers and enter '!' to stop entering more values"
ch = 0
a = []
ar = []
n = 0
nm = 0
while ch != "!"
  ch = gets.chomp
  if ch != "!"
    a[nm] = ch.to_i
    nm += 1
  end
end

def bbl(ar,n)
    puts "#Bubble Sort#"
    for i in 0...n
      for j in 0...n-1
        if ar[j] > ar[j+1]
         swap = ar[j]
         ar[j] = ar[j+1]
         ar[j+1] = swap
        end
        j += 1
        puts "#{ar}"
      end
      i += 1
    end
    return ar
end

def selec(ar,n)
    puts "#Selection Sort"
    pos = 0
    for i in 0...n
      sml = 999999999999999999999999999999999
      for j in i...n
        if ar[j] < sml
         sml = ar[j]
         pos = j
        end
        j += 1
      end
      swap = ar[pos]
      ar[pos] = ar[i]
      ar[i] = swap
      i += 1
      puts "#{ar}"
    end  
    return ar
end

def ins(ar,n)
    puts "#Insertion Sort"
    for i in 1...n
      inv = ar[i]
      j = i - 1
      while j >= 0 && ar[j] > inv 
       ar[j+1] = ar[j]
       j -= 1
      end  
      ar[j+1] = inv
      puts "#{ar}"
    end
    return ar
end

puts "Given array #{ar} "
puts "Enter 1 for bubble sort, 2 for selection sort and 3 for insertion sort"
sel = gets.chomp
case sel
 when "1" then a = bbl(a,nm)
 when "2" then a = selec(a,nm)
 when "3" then a = ins(a,nm)
end
puts "Sorted array is #{a}"
