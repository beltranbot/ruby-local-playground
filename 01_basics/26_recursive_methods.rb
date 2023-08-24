# recursive methods

def draw_line()
  20.times { print "-" }
  puts
end

def calculate(number)
  return 0 if number.zero?
  return number + calculate(number - 1)
end

puts calculate 10
