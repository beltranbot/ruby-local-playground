# r - read (default)
# w - write
# x - exclusive create
# a - append
# t - text mode (default)
# b - binary mode
# + - updating (read and write)

require_relative "../modules/Line_Drawer"

puts "create file and write to it"
f = File.new("test.txt", "w+")
f.puts "first line" # ends line with new line
f.write "second line" # doesn't add new line at the end
f.write "third line"
f.close # close all resources associate with the file
Line_Drawer.draw_line

puts "reading the content of a file with a block:"
File.open("test.txt", "r") do |file|
  puts file.read
end
Line_Drawer.draw_line

puts "managing cursors while reading files:"
f = File.open("test.txt", "r")
# ruby reads the whole content of the file and puts the cursor at the end
puts f.read
# set the cursor at the start of the file
f.rewind
puts f.readline # read line by line
Line_Drawer.draw_line

puts "using each to read line by line:"
f = File.open("test.txt", "r")
f.each do |line|
  puts line
end
Line_Drawer.draw_line

puts "get the absolute path of a file:"
puts File.absolute_path("test.txt")
Line_Drawer.draw_line

puts "get the base name of a file if we have the absolute path:"
puts File.basename "/usr/src/app/01_basics/files_and_directories/test.txt"
Line_Drawer.draw_line

puts "if we don't want the extension, we can specify the extension as the second parameter:"
puts File.basename(
  "/usr/src/app/01_basics/files_and_directories/test.txt",
  ".txt"
)
Line_Drawer.draw_line

puts "file utility methods"

puts "check if file exists:"
puts File::exists? "test.txt"
Line_Drawer.draw_line

puts "check if the passed argument is a file:"
puts File::file? "test.txt"
Line_Drawer.draw_line

puts "check if the passed argument is a directory:"
puts File::directory? "foo"
Line_Drawer.draw_line

puts "renaming files:"
if File::exists? "test.txt"
  File.rename "test.txt", "foo.txt"
elsif File::exists? "foo.txt"
  File.rename "foo.txt", "test.txt"
end
Line_Drawer.draw_line

puts "deleting files:"
File.delete "foo.txt"
Line_Drawer.draw_line
clear
