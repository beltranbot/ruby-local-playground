require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
#   #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"

# puts my_password
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 10
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false


# my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false


users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" },
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  new_users = []
  list_of_users.each { |user_record|
    new_users.append({
      username: user_record[:username],
      password: create_hash_digest(user_record[:password])
    })
  }
  new_users
end

new_users = create_secure_users users
# puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if (
      user_record[:username] == username &&
      verify_hash_digest(user_record[:password]) == password
    )
      return user_record
    end
  end
  "Credentials were not correct"
end
# puts users
puts authenticate_user "heisenberg", "password5", new_users
