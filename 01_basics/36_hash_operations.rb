require_relative "./modules/Line_Drawer"

puts "Assigning new value pairs to a hash"
h = {}
h[:name] = "John"
h[:lastname] = "Doe"
h[10] = "test"
puts h
Line_Drawer.draw_line

puts "unexistent keys return nil"
p h[:city]
Line_Drawer.draw_line

puts "if the hash has a default value, nonexistent keys will return that value instead"
h = Hash.new("This is a default value")
puts h[:city] # returns the default value
puts h["test"] # returns the default value
Line_Drawer.draw_line
