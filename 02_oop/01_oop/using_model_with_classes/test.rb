module ModuleA
  def self.method1
    puts "method1: class method"
  end

  def method2
    puts "method2: instance method"
  end
end

class Test
end

object= Test.new
object.extend ModuleA # the method allows us to use methods of a module
object.method2
