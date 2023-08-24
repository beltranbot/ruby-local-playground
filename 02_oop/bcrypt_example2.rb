=begin
# requiring modules
require_relative "crud" # if the module is in the same folder
$LOAD_PATH << "." # add local modules to global libraries
require "crud" # for global libraries
=end

require_relative "crud"

users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" },
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
