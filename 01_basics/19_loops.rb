# loops

# printing numbers from 0 to 5

def draw_line()
  20.times { print "-" }
  puts
end

puts "while loop"
i = 0
while i < 5
  puts i
  i += 1
end
draw_line

puts "inline while loop"
i = -1
puts "#{i += 1}" while i < 4
draw_line

puts = "until loop"
i = 0
until i > 5
  puts i
  i += 1
end
draw_line

puts "inline until loop"
i = -1
puts "#{i += 1}" until i > 4
draw_line

puts "for loop"
for i in 1..5
  puts i
end
draw_line

puts "print every letter in the array"
for i in ["a", "b", "c"]
  puts i
end
draw_line

puts "interators"
puts "block interator each"
(1..5).each { |i| puts i }
draw_line

puts "block with do end"
(1..5).each do |i|
  puts i
end
draw_line

puts "do while loop"
i = 0
begin
  puts i
  i += 1
end while i < 5
draw_line

puts "do until loop"
i = 0
begin
  puts i
  i += 1
end until i > 5
draw_line

puts "break and next"
puts "break"
i = 0
while i < 5
  if i == 3
    break
  end
  puts i
  i += 1
end
puts "next"
i = 0
while i < 5
  i += 1
  next if i == 3
  puts i
end
draw_line

puts "infinite loops"
# loop do
#   puts "infinite loop"
# end
draw_line

puts "infinite loop with prompt"
loop do
  puts "Enter a number"
  number = gets.chomp.to_i
  if number > 100
    puts "Breaking the loop"
    break
  end
end
