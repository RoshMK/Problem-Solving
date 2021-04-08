puts"Enter an array of numbers and Enter '!' for stop entering more elements"
check = 1
a = []
ab = 0
while check != "!"
  check = gets.chomp
  if check != "!"
    a[ab] = check
  end
  ab += 1
end
puts "Enter the value expected to be everywhere"
b = gets.chomp
l =  a.length 
puts "#{a}"
for i in 0...l-1
   c = a[i]
   e = a[i+1]
  if c == b || e == b
    d = 1
  else
    d = 0
    break
  end
end
if d == 0 
  puts "#{b} is not every where"
else
  puts "#{b} is every where"  
end
