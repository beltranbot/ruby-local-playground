require_relative "./modules/Line_Drawer"

puts "arrays are 0 indexed"
n = [1, 2, 3, 4, 5]
puts n[0] # 1 - first item
puts n[-1] # 5 - last item
Line_Drawer.draw_line

puts "starting at the first element (index 1), give me back 2 elements"
puts n[1, 2] # [2, 3]
Line_Drawer.draw_line

puts "we can use arrays as elements of an array"
n = [1, 2, 3, [4, 5], [6, [7, 8]]]
print n
puts
print n[3]
puts
Line_Drawer.draw_line

puts "accessing values of a nested array"
puts n[3][0]
puts n[4][1][0]
Line_Drawer.draw_line

puts "creating arrays using a range"
a = Array(0..9)
print a
puts
Line_Drawer.draw_line

puts "changing value of an array"
a[0] = 100
print a # [100, 1, 2, 3, 4, 5, 6, 7, 8, 9]
puts
Line_Drawer.draw_line

puts "changing values of an array as a group"
a[3, 3] = ["a", "b", "c"]
print a # [100, 1, 2, "a", "b", "c", 6, 7, 8, 9]
puts
Line_Drawer.draw_line

puts "when assigning in groups, the array will expand to fill the values"
a[3, 3] = Array(1000..1010)
print a # [100, 1, 2, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 6, 7, 8, 9]
puts
Line_Drawer.draw_line

puts "the array will reduce its size to accomodate to a shorter array"
a[3, 30] = Array("a".."c")
print a # [100, 1, 2, "a", "b", "c"]
puts
Line_Drawer.draw_line

puts "appending values to an array"
a = [1, 2]
a << 5
print a
puts
a << "element"
print a # [1, 2, 5, "element"]
puts
Line_Drawer.draw_line

puts "multiplying arrays by integers"
a = ["x", "y"] * 4
print a # ["x", "y", "x", "y", "x", "y", "x", "y"]
puts
Line_Drawer.draw_line

puts "multiplying arrays by strings works as a join operation"

a = ["x", "y", "z"] * "ABC"
print a # xABCyABCz
puts
Line_Drawer.draw_line

puts "mathematical operations with ararys"
puts "with addition it generates a new array with duplicate values"
a = Array(0..5)
b = Array(3..8)
# [0, 1, 2, 3, 4, 5, 3, 4, 5, 6, 7, 8]
print a + b # new array with duplicate values
puts
Line_Drawer.draw_line

puts "with substractoin common items are removed"
print a - b # new array with duplicate values
# [0, 1, 2]
puts
Line_Drawer.draw_line

puts "intersection"
print a & b # return an array of only the common elements
# [3, 4, 5]
puts
Line_Drawer.draw_line

puts "union"
print a | b # return an array without duplicated elements
# [0, 1, 2, 3, 4, 5, 6, 7, 8]
puts
Line_Drawer.draw_line

