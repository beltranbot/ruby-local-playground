module ModuleA
  def dummy
    puts "Dummy from ModuleA"
  end
end

module ModuleB
  def dummy
    puts "Dummy from ModuleB"
  end
end

class Worker
  include ModuleA
  include ModuleB

  def run
    dummy()
  end
end

w = Worker.new
w.run

p Worker.ancestors

puts "inserting a module at the end of the class:"

module WorkerDebugger
  def run(params)
    puts "Runnning with params: #{params.inspect}"
    result = super
    puts "Completed! Result: #{result}"
  end
end

class WorkerNew
  prepend WorkerDebugger
  def run(params)
    puts "Working on params: #{params.inspect}" # return parameters as an array
    params.map { |i| i ** 2 }
  end
end

w = WorkerNew.new
w.run [1, 3, 5]

p WorkerNew.ancestors
# prepend adds the module before the class definition, therefore the module methods will run before the class methods
