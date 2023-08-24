# string concatenation
first_name = "john"
last_name = "doe"
full_name = first_name + " " + last_name
# string interpolation
# with single quotes you won't be able to do string interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"

# irb to enter the interactive console
p full_name.class # class of the variable
p 10.class # integer
p 10.0.class # float


# Common methods
p full_name.methods # see the methods available to the variable

# convert integer to string
p 10.to_s.class

# lenght of a string
p full_name.length

# reverse string
p full_name.reverse

# capitalize string
p full_name.capitalize

# check if a string is empty
p "".empty?

# check if variable is nill
my_var = ""
p my_var.nil?
nil.nil?

# methods, how to find them

# replace in string
sentence = "Welcome to the jungle"
p sentence.sub("the jungle", "utopia")

# variable assignment
first_name = "john"
new_first_name = first_name
first_name = "alice"
p new_first_name

# escaping

p 'the new first name is #{new_first_name}'
p '\'Hey John, how are you doing?\''
