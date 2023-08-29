require_relative "../modules/Line_Drawer"

# prints current directory
puts "print current directory:"
puts Dir.pwd
Line_Drawer.draw_line

puts "create new directories:"
# fails if directories already exists
# Dir.mkdir "foo"
# Dir.mkdir "bar"
Line_Drawer.draw_line

puts "show all files and directories in the current location:"
p Dir.glob "*"
Line_Drawer.draw_line

puts "match only ruby filse"
p Dir.glob "*.rb"
Line_Drawer.draw_line

puts "print all files and directories in the current location:"
Dir.glob("*") do |filename|
  puts filename
end
Line_Drawer.draw_line


puts "change current working directory:"
puts Dir.pwd
Dir.chdir "foo"
puts Dir.pwd
Line_Drawer.draw_line

puts "change current working directory with absolute paths:"
puts Dir.pwd
Dir.chdir "/usr/src/app/01_basics/files_and_directories/foo"
puts Dir.pwd
Dir.chdir "/usr/src/app/01_basics/files_and_directories"
Line_Drawer.draw_line

puts "delete directories:"
p Dir.glob "*" 
# Dir.delete("bar") # fails if the file/directory doesn't exists
Line_Drawer.draw_line

puts "instantiating folders as instances:"
folder = Dir.new "foo"
p folder.entries
Line_Drawer.draw_line

puts "instantiating folders as instances, with absolute path:"
folder = Dir.new "/usr/src/app/01_basics/files_and_directories/foo"
p folder.entries
Line_Drawer.draw_line

puts "print contents of a folder:"
folder = Dir.new "foo"
folder.each do |file|
  puts file
end
Line_Drawer.draw_line

puts "passing parameters to the Dir.entries method:"
p Dir.entries "/usr/bin"
Dir.foreach "/usr/bin" do |entry|
  puts entry
end
p Dir["/usr/bin/*"]
Line_Drawer.draw_line

