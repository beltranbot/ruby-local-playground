# switch case
number = 1

case
when number == 0
  puts "number is 0"
when number == 1
  puts "number is 1"
else
  puts "number is not 0 or 1"
end

number = 1
result = case
when number > 0 then "positive"
when number < 0 then "negative"
else "0"
end
puts result

waist = 38

case waist
when 29..31
  puts "small"
when 32..34
  puts "Medium"
when 36..38
  puts "Large"
end
