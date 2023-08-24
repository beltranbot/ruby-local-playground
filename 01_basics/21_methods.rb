def hello(name)
  return "Hello #{name}" # last statement is returned
end

puts hello "Jack"
puts hello "Jane"

def is_negative(number)
  return number < 0
end

puts is_negative -5
puts is_negative 5

def square(number)
  return number ** 2
end

puts square 9
