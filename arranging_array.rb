class ArrngingArray
 str_arry = []
 puts "Enter some charachters"
 strg = gets.chomp
 str_arry = strg.split("")
 puts "\nCharachter Array:#{str_arry}"
 a = str_arry.length
 puts "\nEnter some numbers"
 num = gets.chomp
 smpl_arry = num.split("")
 numbr_arry = smpl_arry.collect{ |m| m.to_i}
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
end