list = []

puts 'Shopping list'
puts '' # Divider line

loop do
  puts 'Add to list:'
  item = gets.chomp

  # Stop looping if user pressed just enter
  break if item == ""

  # Add item to list
  list << item
end

puts 'Here is your shopping list:'
# Loop through each item in the list
list.each do |item|
  # Display item in a list
  puts "- #{item}"
end
