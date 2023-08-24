# ranges and switch case
print "Enter Grade Point: "
grade = gets.chomp.to_i

result = case grade
when 90..100 then "Letter Grade A" # inclusive range
when 80...90 then "Letter Grade B" # exclusive range
when 70...80 then "Letter Grade C"
when 60...70 then "Letter Grade D"
when 50...60 then "Letter Grade E"
when 0...50 then "Letter Grade F"
else "invalid input"
end

puts result

puts (1..5).to_a # 1, 2, 3, 4, 5 # inclusive range

puts (1...5).to_a # 1, 2, 3, 4 # exclusive range