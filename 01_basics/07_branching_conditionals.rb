# && and
# || or
# condition = false
# another_condition = false

# if !condition && another_condition
#     # execute some code 
#     puts "This evaluated to true"
# else
#     # execute some other code
#     puts "This evaluated to false"
# end
# puts "La la la"

# name = "Evgeny"

# if name == "John"
#     puts "Welcome to the program, John"
# elsif name == "Jack"
#     puts "Welcome to the program, Jack"
# elsif name == "Evgeny"
#     puts "Go back to helping students Evgeny"
# else
#     puts "Welcome to the program, User"
# end

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

# calculator
puts "Simple calculator"
25.times { print "-" } 
puts "Enter the first number"
num1 = gets.chomp
puts "Enter the second number"
num2 = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for substraction"

user_entry = gets.chomp

puts "You selected #{user_entry}"

if user_entry == "1"
    puts "You have chosen to multiply"
    puts multiply(num1.to_i, num2.to_i)
elsif user_entry == "2"
    puts "You have chosen to add"
    puts add(num1.to_i, num2.to_i)
elsif user_entry == "3"
    puts "You have chosen to substract"
    puts substract(num1.to_i, num2.to_i)
else
    puts "Invalid entry"
end