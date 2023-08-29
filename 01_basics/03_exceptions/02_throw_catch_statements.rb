# throw catch statement

array = [
  ["foo", "bar", "wanted", "test"],
  [1, 2, 3, 4, 5],
  ["a", "b", "c", "d"]
]

counter = 0
search = nil

search = catch(:found) do # can be a string or a symbol
  array.each do |raw|
    raw.each do |item|
      counter += 1
      if item == "wanted"
        search = item
        throw(:found, item) if item == "wanted"
      end
    end
  end
end
puts "Counter: #{counter}"
puts "Search: #{search}"
