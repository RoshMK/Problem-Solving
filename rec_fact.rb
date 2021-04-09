puts"enter a number for finding factorial"
num = gets.chomp
num = num.to_i
def fact(n)
  if n == 1
    return 1
  end
  return n * fact(n - 1)
end
f = fact(num)
puts"Factorial of #{num} is #{f}"
