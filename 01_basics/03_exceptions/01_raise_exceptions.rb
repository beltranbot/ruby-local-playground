require_relative "../modules/Line_Drawer"

puts "before exception"
# raise # raises unhandle exception
puts "after exception"
Line_Drawer.draw_line

puts "before exception"
# raise Exception, "on exception" # raises an expecific exception with message
puts "after exception"
Line_Drawer.draw_line

a = 5
puts "conditionally raising an exception"
puts "before exception"
raise Exception, "on exception" if a > 5 # raises an expecific exception with message
puts "after exception"
Line_Drawer.draw_line

puts "handling exceptions"

begin
  puts "processing"
  raise NameError, "custom error message" # passes exception message
rescue Exception => e
  puts "exception handling"
  puts e.message
end
Line_Drawer.draw_line

begin
  puts "before exception"
  # "test".odd?
  # 3 / 0
  puts "after exception"
rescue ZeroDivisionError => e # divide by zero message
  puts "#{e.class}: #{e.message}"
  puts e.backtrace.inspect # backtrace
  e.backtrace.each { |location| puts location}
  puts "#{$!.class}: #{$!.message}" # using global variables to see error
  $@.each { |location| puts location } # global variable that stores the backtrace
rescue NoMethodError => e
  puts "#{e.class}: #{e.message}"
else # handling no errors
  puts "no errors!"
ensure
  puts "ensuring execution"
end
Line_Drawer.draw_line

filename = "test.txt"
begin
  file = File.open filename
  if file
    puts "File opened successfully"
  end
rescue Exception => e
  puts "execption2 #{e.class}:#{e.message}"
end
Line_Drawer.draw_line
