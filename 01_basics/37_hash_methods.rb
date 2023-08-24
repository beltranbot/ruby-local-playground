require_relative "./modules/Line_Drawer"

h = { name: "John", lastname: "Doe", city: "London" }
puts "length of a hash: " + h.length.to_s
puts "size of a hash: " + h.size.to_s
puts "convert a hash into an array: " + h.to_a.to_s
puts "min and max return the min and max values according to the key value"
puts "min: " + h.min.to_s
puts "max: " + h.max.to_s

puts "fetch returns the value of a key and if it doesn't exist returns an error"
h.fetch(:name)
begin
  raise
    h.fetch(:nickname)
  rescue
    puts ":nickname key not found exception raised"
end

puts "keys: " + h.keys.to_s
puts "values: " + h.values.to_s
puts "key returns a key given a value"
puts "key: " + h.key("John").to_s
puts "check if hash has key: " + h.has_key?(:name).to_s
puts "check if hash has key: " + h.key?(:nickname).to_s
puts "has_key? and key? work the same way"
puts "check for existance of values"
puts "value?: " + h.value?("John").to_s
puts "store values in a has"
h.store :email, "john.doe@example.com"
puts h
Line_Drawer.draw_line
puts "use delete to delete key pair values in a hash"
h.delete :email
puts h
Line_Drawer.draw_line
puts "merge method merges 2 hashes and returns a new hash"
new_h = h.merge({ city: "Paris", phone: "0123456789" })
puts new_h
Line_Drawer.draw_line

puts "sort return an array with the key value pairs sorted"
puts new_h.sort.to_s
new_h.sort.each { |key, value| puts "#{key} = #{value}" }
Line_Drawer.draw_line
puts "reverse each to iterate in the reverse order"
new_h.sort.reverse_each { |key, value| puts "#{key} = #{value}" }
Line_Drawer.draw_line
puts "the clear method removes all key value pairs from the hash"
new_h.clear
puts new_h

