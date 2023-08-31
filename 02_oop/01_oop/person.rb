class Person
  # attr_reader :name, :age
  # attr_writer :name, :age
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def displayPerson
    puts "Name: #{@name} Age: #{@age}"
  end

  def name=(name)
    @name = name
  end
end

puts "instantiate a class:"
p1 = Person.new("John", 25)
p1.displayPerson
p1.name = "Jack"
p1.age = 30
puts p1.name
puts p1.age
# p2 = Person.new

puts p1
# puts p2

puts "print class of an object:"
puts p1.class

