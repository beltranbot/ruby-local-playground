def search(key)
  result = {}
  Dir.glob ("*.txt") do |filename|
    f = File.open(filename)
    f.each_with_index do |line, index|
      if line.include? key
        # return filename, index + 1
        result[index + 1] = filename
      end
    end
    f.close
  end
  result
end

def find(key)
  result = {}
  Dir.glob("*.txt") do |filename|
    File.foreach(filename).each_with_index do |line, index|
      if line.include? key
        result[index + 1] = filename
      end
    end
  end
  result
end

puts "Search in files:"
print "key: "
key = gets.chomp
result = find(key)
if result.length > 0
  for key, value in result
    puts "Filename: #{value} Line Number: #{key}"
  end
else
  puts "Not found!"
end
