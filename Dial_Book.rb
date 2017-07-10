 dial_book = {
  
  "Kreuzberg" => "10999",
  "Friedrichshain" => "10231",
  "Mitte" => "10131",
  "Neukoln" => "10455",
  "Wedding" => "10666"
  
}

# create a question and display city names

# first method to display city names
 def get_city_names (somehash)
   somehash.each { |k ,v| puts k }
 end

# second method to display postal codes

 def get_area_codes (somehash, key)
   somehash [key]
 end

loop do
 
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  
  answer = gets.chomp 
  
  if answer != "Y" 
    break
  end
  
  puts " Which city do you want to lookup the area code?"
  get_city_names (dial_book)
  puts "Enter you selection"
  city_name = gets.chomp 
  
  if dial_book.include?(city_name)
    puts "The area code for #{city_name} is #{get_area_codes(dial_book, city_name)}"
    
  else
    puts "You entered a city name not in the list"
  end
  
end