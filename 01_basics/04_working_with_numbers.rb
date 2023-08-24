=begin
# numbers
puts 1 + 2

puts 10 / 4 # integer division

puts 10.0 / 4 # float division

x = 5
y = 10
puts y / x

20.times { print "-" }

20.times { puts "hi" }

20.times { puts rand(10) } # random number between 0 and 9

# to_i returns zero if it can't convert the string to an integer
=end

# calculator
puts "Simple calculator"
25.times { print "-" } 
puts "Enter the first number"
num1 = gets.chomp
puts "Enter the second number"
num2 = gets.chomp

def multiply(num1, num2)
    num1 * num2
end

def add(num1, num2)
    num1 + num2
end

def substract(num1, num2)
    num1 - num2
end

def divide(num1, num2)
    num1 / num2
end

def mod(num1, num2)
    num1 % num2
end

puts "The first number multiplied by the second number is #{multiply(num1.to_i, num2.to_i)}"
puts "The first number added to the second number is #{add(num1.to_i, num2.to_i)}"
puts "The first number substracted from the second number is #{substract(num1.to_i, num2.to_i)}"
puts "The first number divided by the second number is #{divide(num1.to_f, num2.to_f)}"
puts "The module between the first and second number is #{mod(num1.to_i, num2.to_i)}"