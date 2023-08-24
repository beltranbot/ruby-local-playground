def draw_line()
  20.times { print "-" }
  puts
end

puts "local scope"
a = 5
3.times { a = 2 } # value of a changes here

puts a
draw_line
#-----------------

puts "variables within methods don't modify the local scope"

a = 1 # global scope

def test
  a = 5
  puts "a is a local variable" # local scope
end

test
puts a # global variable a
draw_line
#-----------------

puts "local variables"
$a = 1 # declaring a global variable

puts "$a is a global variable"
def test
  $a = 5 # updating the global variable
  puts "$a = #{$a}"
end

test()
puts $a
draw_line
#-----------------