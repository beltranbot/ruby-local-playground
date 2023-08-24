def draw_line()
  20.times { print "-" }
  puts
end

# named arguments
puts "named arguments"
def person(name:"Jane", age:30)
  puts "Name: #{name}"
  puts "Age: #{age}"
end

person(name:"John", age:40)
draw_line

# variable length arguments
puts "variable length arguments"
def hello(*names)
  names.each do |name|
    puts name
  end
end

hello "Jane", "Jack", "Bruce"
draw_line

# blocks as arguments for methods
puts "blocks as arguments for methods"
def test(&block) # the block has to be the last parameter of the method
  block.call # .call to execute
end

test { puts "a block" } # equivalent to: test { puts("a block") }
draw_line
