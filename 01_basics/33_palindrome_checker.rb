def is_palindrome(word)
  return true if word.length <= 1
  return false if word[0] != word[-1]
  return is_palindrome(word[1, word.length-2])
end

puts "Palindrome Words"
print "Word: "
word = gets.chomp

puts "#{word} is palindrome: #{is_palindrome(word)}"
