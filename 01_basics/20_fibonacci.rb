print "Enter a number: "
number = gets.chomp.to_i # chomp removes the new line character

fibonacciPrev = 0
fibonacci = 1
while fibonacci <= number
  puts fibonacci
  temp = fibonacci
  fibonacci = fibonacci + fibonacciPrev
  fibonacciPrev = temp
end

20.times { print "-" }
puts

puts "fibonacci with parallel assigment"
fibonacciPrev = 0
fibonacci = 1
while fibonacci <= number
  puts fibonacci
  fibonacciPrev, fibonacci = fibonacci, fibonacci + fibonacciPrev
end
