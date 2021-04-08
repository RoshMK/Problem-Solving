cart = Hash.new
check = "1"
while check == "1"
  puts "Enter item"
  item = gets.chomp
  puts "Enter the corresponding prices"
  price = gets.chomp
  puts "Enter 1 for next item or enter ! when you are done"
  check = gets.chomp
  cart[item] = price
end
def ship (me,sum = 0)
  me.each do |k,v| sum += v.to_i end
  return sum
end
c = ship(cart)
if c >= 50
  puts "You are eligible for free shipping"
else
  c = 50 - c
  puts "You are not eligible for free shpping, buy anything worth #{c}$ to avail free shipping"
end
puts "Thank You"