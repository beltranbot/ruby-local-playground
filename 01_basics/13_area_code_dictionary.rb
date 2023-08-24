dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "orlando" => "407",
    "lancaster" => "717",
}

# get city names from the hash
def get_city_names(hash)
    # write code here
    hash.keys.each { |city| puts city }
end

# get aread code based on given hash and key
def get_area_code(hash, key)
    # write code here
    hash[key]
end

# execution flow
loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want the area code for?"
    get_city_names dial_book
    print "Enter your selection: "
    city = gets.chomp.downcase
    area_code = get_area_code dial_book, city
    if area_code
        puts "The area code for #{city} is #{area_code}"
    else
        puts "You enteredd an invalid city name"
    end
end
