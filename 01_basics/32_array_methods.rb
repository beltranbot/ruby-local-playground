require_relative "./modules/Line_Drawer"

puts "Array methods"
a = Array(0.. 10)
print a
puts
puts "size: " + a.size.to_s
puts "legnth: " + a.length.to_s
puts "max: " + a.max.to_s
puts "min: " + a.min.to_s
puts "sum: " + a.sum.to_s
puts "first: " + a.first.to_s
puts "last: " + a.last.to_s
puts "append: "
a.append 1
print a
puts
puts "count: " + (a.count 1).to_s # shows the number of times an element is in the array
puts "pop: " + a.pop.to_s
print "after pop:" + a.to_s
puts
a.push("Ruby")
print a
puts
puts a.index("Ruby").to_s # shows the index of the first element that matches the argument
puts "delete elements from an array"
a.delete("Ruby")
print a
puts
puts a.at(1) # same as a[1]
puts "reverse: " + a.reverse.to_s
puts "shuffle: " + a.shuffle.to_s
puts "sort: " + a.sort.to_s
puts "join: " + a.join
puts "join with dash: " + a.join("-")
puts "include, checks if element is in the array: "
puts "3 is in the array: " + a.include?(3).to_s
puts "'x' isn't in the array: " + a.include?("x").to_s
puts "printing elements in the array:"
a.each { |x| puts x }
puts "traversing by index"
a.each_index { |i| puts "index #{i}" }
Line_Drawer.draw_line
puts "traversing by index and value"
Array("a".."z").each_with_index { |v, i| puts "#{i}: #{v}" }

Line_Drawer.draw_line
puts "map"
puts a.map { |x| x ** 2 }.to_s
Line_Drawer.draw_line
puts "flatten array, convert all arrays to main elemetns"
a = [1, 2, [4, 5], [4, 5], ["a", "b"]]
puts a.flatten.to_s
Line_Drawer.draw_line
puts "cartesian product"
# [[1, "a"], [1, "b"], [1, "c"], [2, "a"], [2, "b"], [2, "c"], [3, "a"], [3, "b"], [3, "c"]]
puts ([1, 2, 3].product(["a", "b", "c"])).to_s






