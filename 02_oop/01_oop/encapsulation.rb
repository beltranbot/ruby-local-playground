class Person
  # attr_accesor :name, :profession
  def initialize(name, profession)
    @name, @profession = name, profession
    
  end

  def info
    "Name: #@name, Profession: #@profession"
  end

  def setProfession(profession)
    @profession = profession
  end
end

p = Person.new("John", "Doctor")

puts p.info