def draw_line
  25.times { print "-" }
  puts
end

# iterate over an array
animals = ["lion", "tiger", "leopard"]

puts "using for loop"
for animal in animals
  puts animal
end
draw_line

puts "using while loop"
i = 0
while i < animals.length
  puts animals[i]
  i += 1
end
draw_line

puts "using build in methods"
with_each = animals.each do |animal|
  puts animal
end
draw_line

puts "using map"

with_map = animals.map do |animal|
  puts animal
end
draw_line

puts "with each"
print "with_each=#{with_each}\n" # ["lion", "tiger", "leopard"]
puts "with map"
print "with_map=#{with_map}\n" # [nil, nil, nil]
draw_line

