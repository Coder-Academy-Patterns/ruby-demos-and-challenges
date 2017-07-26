# name, quantity

list = []

puts 'Shopping list'
puts '' # Divider line

puts 'Add items:'

loop do
  puts 'Name:'
  name = gets.chomp

  # Stop looping if user pressed just enter
  break if name == ""

  quantity = 0
  loop do
    puts 'How many?'
    quantity = gets.chomp.to_i
    break if quantity > 0
    puts "Invalid number, please try again"
  end

  item = {
    name: name,
    quantity: quantity
  }

  # Add item to list
  list << item

  puts ''
end

puts 'Here is your shopping list:'
# Loop through each item in the list
list.each do |item|

  # Display item in a list
  puts "- #{item[:name]} × #{item[:quantity]}"
end
