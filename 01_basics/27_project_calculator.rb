# project calculator

def draw_line()
  20.times { print "-" }
  puts
end

add = lambda do |num1, num2|
  num1 + num2
end

substract = lambda do |num1, num2|
  num1 - num2
end

multiply = lambda do |num1, num2|
  num1 * num2
end

divide = lambda do |num1, num2|
  num1 / num2
end

$divide_id = divide.__id__

def manager(function)
  print "Number1: "
  num1 = gets.chomp.to_i
  print "Number2: "
  num2 = gets.chomp.to_i
  num2 = num2.to_f if function.__id__ == $divide_id
  result = function.call(num1, num2)
  puts "Result: #{result}".center(50, "-")
  draw_line
end

begin

  puts "Calculator"
  puts "a) Add"
  puts "b) Substract"
  puts "c) Multiply"
  puts "d) Divide"

  print "Select (a/b/c/d/q): "
  choice = gets.chomp.downcase
  case choice
  when "a"
    manager(add)
  when "b"
    manager(substract)
  when "c"
    manager(multiply)
  when "d"
    manager(divide)
  when "q"
    break
  end

end while choice != "q"
