# loads current directory to global path array
=begin
puts "loading adding to the global path"
$LOAD_PATH << "."
require "test_module" # extension is not required
=end
puts "loading with a absolute path"
require "./test_module"

=begin
puts "using require_relative"
require_relative "test_module"
=end

puts ModuleA::MESSAGE # two colons (::) to get constants

puts ModuleA.square 5

