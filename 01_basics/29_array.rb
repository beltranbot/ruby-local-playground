def draw_line
  25.times { print "-" }
  puts
end

# create an array
puts "create an array with brackets"
a = []
p a.class # Array
draw_line

puts "create an array with Array.new"
a = Array.new
p a # []
draw_line


puts "create an array with a defined number of slots"
a = Array.new 5
p a # [nil, nil, nil, nil, nil ]
draw_line

puts "defining a default value"
a = Array.new 5, "test"
p a # ["test", "test", "test", "test", "test"]
draw_line

puts "create an array of square values from 0 to 4"
a = Array.new(5) { |x| x ** 2 } # use block to initialize the array
p a # [0, 1, 4, 9, 16]
draw_line

puts "initializing the array"
a = Array.new(5) { 3 } # 
p a # [3, 3, 3, 3, 3]
draw_line


puts "another way of creating an array"
a = Array.[](1,2,3)
p a # [1, 2, 3]
draw_line

a = Array[1, 2, 3]
p a # [1, 2, 3]
draw_line

puts "create an array using ranges"
a = Array(1..5)
p a # [1, 2, 3, 4, 5]
draw_line

puts "array of strings"
animals = ["lion", "tiger"]
p animals
draw_line

puts "array with mixed items"
mixed = ["lion", 4, 6, 2.5]
p mixed
draw_line

puts "another mixed array"
mixed = [5, [2, 6], ["lion"], 4.5]

