a = [1, 2, 3, 4 , 5, 6, 7, 8, 9]

p a.last # last element of the array

x = 1..100 # range from 1 to 100
p x.to_a # turns the range into an array4

p x.to_a.shuffle # shuffle the elements of an array

p x.to_a.shuffle! # this only changes the array not the original range
p x

z = x.to_a.shuffle! # the bang mutates the caller
p z
p z

b = "a".."z" # range from a to z
p b.to_a.shuffle
p b.to_a.length # gets the length of an array

a << 10 # adds element to the end of the array

p a.last
p a.first # gets the first element of the array

name = "Mashrur"

a.unshift(name) # adds element to the start of the array

p a

a.append(name) # add element to the end of the array

p a
p a.uniq! # gets unique elements of the array

p a.empty? # checks if the array is empty

b = []
p b.empty?

p a.include? name

p a[0] #

a.push("new item") # adds element to the end of the array
p a
c = a.pop # removes the last element of the array and returns it

p c
p a

b = a.join "-" # join all elements of the array turns it into an string, accepts optional parameter

p b

p b.split "-" # splits an string into an array


z = %w(my name is mshrur and this is great Ruby is amazing) # turns string into array


# iterators
## for loop
for i in z # iterates over array
    puts i
end

z.each do |i|
    print i + " "
end

z.each { |i|
    print i + " "
}


# generate numbers from 1 to 100, shuffle them and returns the odds
z = (1..100).to_a.shuffle
p z.select { |number| number.odd? }