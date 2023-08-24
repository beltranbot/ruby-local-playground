# get input from the user

=begin
puts "What is your first name?"
first_name = gets.chomp # get input from user
puts "Thank you, you said your first name #{first_name}"
=end

=begin
puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2 # to_i converts string to integer

# prints string n number of times
p "rumba " * 5
=end

puts "what is your first name?"
first_name = gets.chomp
puts "what is your last name?"
last_name = gets.chomp

puts "Your full name is #{first_name} #{last_name}"
puts "Your full name reversed is is #{(first_name + " " + last_name).reverse}"
puts "Your name has #{(first_name + last_name).length} characters in it"

=begin
your full name is
your full name reversed is

=end
