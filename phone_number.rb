class PhoneNumber
  #checks the format of a given number
  def phon_num(num)
      a = num
      ch = 0
      # converts to an array of charachters
      num.split("")
      if num.length == 14
        # checking the format for correct spaces, - and ()
        for i in 0...14
          #puts "#{num[i]} "
          next if i == 0 || i == 4 || i == 5 || i == 9
          ch += 1 if num[i].match?(/\d/) 
        end
        if (num[0] == "(" && num[4] == ")") && (num[5] == " " && num[9] == "-") && ch == 10
          puts "Your number #{a} is valid"
          return true
        else
          puts "Your number #{a} is in invalid number format"
          return false
        end
      else
        puts "Your number #{a} invalid number format"
        return false
      end
  end
  
end
=begin
ph = PhoneNumber.new
puts "Enter your phone number to check if its in valid format"
number = gets.chomp
ph.phon_num(number)
=end