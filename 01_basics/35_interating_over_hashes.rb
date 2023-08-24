require_relative "./modules/Line_Drawer"

puts "iterating over every key value of the hash"
person = { name: "John", lastname: "Doe", city: "London" }

for key, value in person
  puts "#{key}: #{value}"
end
Line_Drawer.draw_line

puts "get all keys of a hash"
puts person.keys.to_s

puts "get all values of a hash"
puts person.values.to_s
Line_Drawer.draw_line

puts "traversing hash with a while loop"
i = 0
while i < person.keys.length
  puts "#{person.keys[i]}: #{person.values[i]}"
  i += 1
end

