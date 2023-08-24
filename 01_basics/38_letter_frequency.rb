def letter_frequency(text)
  hash = {}
  for letter in text.split("")
    if hash.key?(letter)
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end
  return hash
end

def letter_frequency_2(text)
  chars = ("a".."z").to_a + ("A".."Z").to_a
  frequency = {}
  # iterate over string
  text.each_char do |char|
    if frequency.key?(char)
      frequency[char] += 1
    else
      frequency[char] = 1
    end
  end
  return frequency
end

puts "Letter Frequency"
print "Text: "
text = gets.chomp

frequency = letter_frequency text
frequency.sort.each { |k, v| puts "#{k}: #{v}" }

result = letter_frequency_2 text
puts result

