# hashes
sample_hash = {
    "a" => 1,
    "b" => 2,
    "c" => 3
}

my_details = {
    "name" => "mashrur",
    "favcolor" => "red"
}

p my_details["favcolor"]
p sample_hash["b"]

another_hash = {
    a: 1, # using symbols
    b: 2,
    c: 3
}
p another_hash
p another_hash[:a] # accessing data using symbols

p sample_hash.keys # returns keys of the hash as an array
p sample_hash.values # returns values of the hash as an array

p another_hash.keys

def print_classes(hash)
    hash.each{ |key, value|
        puts "The class for key is #{key.class} and the value is #{value.class}"
    }
end

print_classes sample_hash
20.times { print "-" }
puts
print_classes another_hash

my_hash = {
    a: 1,
    b: 2,
    c: 3,
    d: 4
}

my_hash[:e] = "mashrur" # adds new value to hash
my_hash[:c] = "Ruby" #changes value of a field in a hash
p my_hash

my_hash.each { |key, value|
    puts "The key is #{key} and the value is #{value}"
}

p my_hash.select { |key, value| value.is_a?(String) } # select the fields that have string values

my_hash.each { |k, v| my_hash.delete(k) if v.is_a?(String) } # remove key from hash if value is a string
p my_hash
