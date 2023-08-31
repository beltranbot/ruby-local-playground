class Person
  def initialize(name, age)
    @name, @age = name, age
  end

  def test
    puts "test statement"
  end
end

class Employee < Person

  def displayInfo
    puts "Name: #{@name} Age: #@age"
  end
end

e = Employee.new("John", 25)
e.displayInfo
e.test

puts "Find all parent classes of a class:"
p Employee.ancestors
p String.ancestors

