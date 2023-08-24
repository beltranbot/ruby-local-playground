
def auth_user(username, password, list_of_users)
    list_of_users.each { |user|
        return user if user[:username] == username && user[:password] == password
    }
    return "Credentials were not correct"
end

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

attemps = 1

while attemps < 4
    print "Username: "
    username = gets.chomp.downcase
    print "Password: "
    password = gets.chomp.downcase
    authentication = auth_user username, password, users
    puts authentication
    puts "Press n to quit or any other key to continue:"
    action = gets.chomp.downcase
    break if action == "n"
    attemps += 1
end
puts "You have exceeded the number of attemps" if attemps == 4
