def draw_line()
  20.times { print "-" }
  puts
end

# lambda functions
puts "lambda functions"
lambda { |x| puts x * x }.call(8) # using the lambda function
->(x) { puts x * x }.call(8) # alternative syntax for lambda functions, arrow functions
square = ->(x) { puts x * x } # assigniment the lambda function to a variable
puts square.call(8)
draw_line

puts "multiline lambda functions"
square = lambda do
  |x|
  x * x
end
puts square.call 8
draw_line

puts "using lambdas as arguments for a function"
def test(function, argument)
  function.call(argument)
end

puts test square, 8

# anonymous functions

