# blocks

def draw_line
  20.times { print "-" }
  puts
end

def test
  puts "I'm in the method"
  yield
  puts "I'm in the method again"
  yield
end

puts "block with yield"
test { puts "I'm in the block" }

=begin
  I'm in the method
  I'm in the block
  I'm in the method again
  I'm in the block
=end
draw_line

def with_parameters
  yield "This is a block parameter"
  yield 1
end

puts "block with parameters"
# passing parameters to the method
with_parameters { |a| puts "parameters: #{a}" }

=begin
  parameters: This is a block parameter
  parameters: 1
=end
draw_line

def with_multiple_parameters
  yield 1, 100
end

puts "block with multiple parameters"
with_multiple_parameters { |a, b| puts "p1: #{a}, p2: #{b}" }
draw_line

puts "custom blocks"
BEGIN {
  puts "BEGIN block" # executes at the beginning of the program
}

END {
  puts "END block" # executees at the end of the program
}

puts "main program"
