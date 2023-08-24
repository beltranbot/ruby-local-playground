users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" },
]

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input rom the user and compare password"
puts "If password is correct, you will get back the user object"

for i in 1..3 do
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    found = users.select { |user| user[:username] == username && user[:password] == password }
    if found.empty?
        puts "Credentials were not correct"
    else
        puts found
    end

    puts "Press n to quit or any other key to continue:"
    action = gets.chomp.downcase
    if action == "n"
        break
    end
end
