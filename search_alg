puts "An array of integers and enter '!' to stop entering more values"
ch = 0
a = []
ar = []
n = 0
nm = 0
while ch != "!"
  ch = gets.chomp
  if ch != "!"
    a[nm] = ch
    nm += 1
  end
end

puts "Enter the value to be found"
ch = gets.chomp

puts "Enter one for 1 for Linear Search and 2 for Binary Search"
x = gets.chomp
if x == "1"
  puts"#Linear Search#"
  for i in 0...nm
    if ch == a[i]
     ar[n] = i 
     n += 1
    end
  end
  if n >= 1
    puts " Value occures #{n}-times in #{ar} positions of the given array."
  else 
    puts "Value not found."
  end
else
  puts"#Binary Search#"
  l = 0
  h = nm - 1
  j = 0
  while (l <= h)
    m = (l + h)/2
    if a[m] == ch 
      puts " Value found at #{m}"
      j = 1
      break
    elsif a[m] > ch
      h = m - 1
    else 
      l = m + 1
    end
  end
  if j == 0
    puts "Value not found"
  end
end
