require_relative "./modules/Line_Drawer"

puts "defining a hash"
h = {}
puts "class: " + h.class.to_s
Line_Drawer.draw_line

puts "defining a hash with symbols"
h = { :name => "John", :lastname => "Doe" }
puts h
Line_Drawer.draw_line

puts "defining a hash with strings"
h = {"name" => "John", "lastname" => "Doe"}
puts h
Line_Drawer.draw_line

puts "you can use numbers as key in hashes"
h = {0 => "one", 1 => "two"}
puts h
Line_Drawer.draw_line

puts "you can use arrays as key in hashes"
h = {["test", 1] => "test_value", ["test", 2] => "test_value_2"}
puts h
Line_Drawer.draw_line

puts "you can use a hash as a key in hashes"
h = {{:hello => "hello"} => "hello", {:world => "world"} => "world"}
puts h
Line_Drawer.draw_line

puts "creating a hash using the new hash method"
h = Hash.new
puts h.class
Line_Drawer.draw_line

puts "you can give a value as a parmeter, this will be default value for the hash"
h = Hash.new "test"
puts h.class
puts h.default
Line_Drawer.draw_line

puts "another way of creating hashes"
h = Hash["number" => 100, 5 => "test"]
puts h
Line_Drawer.draw_line

puts "creating hashes with new syntax"
puts "old syntax:"
h = { :name => "John", :lastname => "Doe" }
puts h
puts "new syntax:"
h = { name: "John", lastname: "Doe" }
puts h
puts "new syntax only works when the keys are symbols"

