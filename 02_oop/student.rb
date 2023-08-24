require_relative "crud"

class Student
    include Crud
    # creates setters and getters
    attr_accessor :first_name, :last_name, :email, :username, :password
    # creates only getters 
    # attr_reader :username
    # @first_name #instance variables
    # @last_name
    # @email
    # @username
    @password

    def initialize(first_name, last_name, username, email, password)
        @first_name = first_name
        @last_name = last_name
        @username = username
        @email = email
        @password = password
    end

    # # setter method
    # def first_name=(name)
    #     @first_name = name
    # end

    # # getter method
    # def first_name
    #     @first_name
    # end

    # all classes have this method
    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, " +
        "Username: #{@username}, email: #{@email}"
    end
end

mashrur = Student.new(
    "Mashrur",
    "Hossain",
    "mashrur1",
    "mashrur@example.com",
    "password1",
)
john = Student.new(
    "John",
    "Doe",
    "john1",
    "john1@example.com",
    "password2",
)

puts mashrur
# puts john

hashed_password = mashrur.create_hash_digest(mashrur.password)
puts hashed_password

