class ArrngingArray
 
 def mrg_arr(str_arry,numbr_arry) 
  puts "\nCharachter Array:#{str_arry}"
  a = str_arry.length
  puts "\nNumber Array: #{numbr_arry}"
  b = numbr_arry.length
  d = a + b
  c = 0
  a<b ? c = a : c = b ; 
  finl_array = []
  finl_array[0] = str_arry [0]
  finl_array[0+1] = numbr_arry [0]
  for i in 1...(c)
    finl_array[i+i] = str_arry [i]
    finl_array[i+i+1] = numbr_arry [i] 
  end
  if a > b
    for i in (c*2)...d
      finl_array[i] = str_arry [i-c]
    end
  else
    for i in (c*2)...d
      finl_array[i] = numbr_arry [i-c] 
    end
  end
  puts "\nFinal Array:#{finl_array}"
  return finl_array
 end
end

=begin
mg =ArrngingArray.new
s_arry = []
puts "Enter some charachters"
strg = gets.chomp
s_arry = strg.split("")
puts "\nEnter some numbers"
num = gets.chomp
smpl_arry = num.split("")
n_arry = smpl_arry.collect{ |m| m.to_i}
mg.mrg_arr(s_arry,n_arry)
=end