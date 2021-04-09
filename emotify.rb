puts "Enter a sentance to EMOTIFY"
s = gets.chomp
a = s.split(" ")
l = a.length
fs = ""
for i in 0...l
  case a[i].downcase
    when "smile" then a[i] = ":D"
    when "grin"  then a[i] = ":)"
    when "sad"   then a[i] = ":("
    when "mad"   then a[i] = ":P"
  end
  fs << a[i] << " "
end
puts "#{fs}" 