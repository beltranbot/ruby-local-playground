class Person
  MESSAGE = "Class Constant" # class constants should go in upper case
  @@counter = 0 # class variable

  def initialize
    @@counter += 1
  end

  def self.counter # class method, we can use Person.counter instead
    @@counter
  end 

  def self.counter=(new_counter)
    @@counter = new_counter
  end
end

puts Person::MESSAGE

p1 = Person.new
p2 = Person.new
p3 = Person.new

puts Person.counter
Person.counter = 5
puts Person.counter
