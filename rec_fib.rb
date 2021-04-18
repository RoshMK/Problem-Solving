=begin
puts"Enter a number"
num = gets.chomp
num = num.to_i
=end
class RecFibanocci
  def fib(f)
    if f  < 2
      return f
    end
    fib(f - 1) + fib(f - 2)
  end
end
#n = fib(num)
#puts"fibannoci number in #{num}th position is #{n}" 