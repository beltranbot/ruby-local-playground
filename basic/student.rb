require_relative 'crud'

class Student
  include Crud
  attr_accessor :firstname, :lastname, :email, :username, :password

  def initialize(
    firstname,
    lastname,
    username,
    email,
    password
  )
    @firstname = firstname
    @firstname = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@firstname}, Last name: #{@lastname}, Username: #{@username}, email address: #{@email}"
  end
end

mashrur = Student.new('Mashrur', 'Hossain', 'mashrur1', 'mashrur@example.com', 'password1')
john = Student.new('John', 'Doe', 'john1', 'john1@example.com', 'password2')

hashed_password = mashrur.create_hash_digest(mashrur.password)

p hashed_password
