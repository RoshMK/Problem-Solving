#checks the format of a given number
def phon_num(num)
    a = num
    # converts to an array of charachters
    num.split("")
    if num.length == 14
      # checking the format for correct spaces, - and ()
      if (num[0] == "(" && num[4] == ")") && (num[5] == " "&&num[9] == "-")
        puts "Your number #{a} is valid"
      else
        puts "Invalid number format"
      end
    else
      puts "Invalid number format"
    end
  end
  puts "Enter your phone number to check if its in valid format"
  number = gets.chomp
  phon_num(number) 