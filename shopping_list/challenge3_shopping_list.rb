def ask_item_info
  puts 'Name?'
  name = gets.chomp

  # Stop looping if user pressed just enter
  return nil if name == ""

  quantity = 0
  loop do
    puts 'How many?'
    quantity = gets.chomp.to_i
    break if quantity > 0
    puts "Invalid number, please try again"
  end

  price = nil
  loop do
    puts 'Expected per item price?'
    input = gets.chomp
    break if input == ""
    price = input.to_f
    break if price > 0
    price = nil
    puts "Invalid price, please try again"
  end

  {
    name: name,
    quantity: quantity,
    price: price
  }
end

def add_items(list)
  puts 'Add items:'

  loop do
    item = ask_item_info
    break if item.nil? # User wants out

    # Add item to list
    list << item

    puts ''
  end
end

def display_items(list)
  if list.empty?
    puts "You have no items yet"
    return
  end

  puts 'Here is your shopping list:'
  # Loop through each item in the list
  list.each_with_index do |item, index|
    # Display item in a list
    print "#{ index + 1 }:  "
    print "#{item[:name]} × #{item[:quantity]}"
    print " (ea $#{'%.2f' % item[:price]})" if item[:price]
    puts # Print newline
  end
end

def ask_for_item_index(list)
  loop do
    display_items(list)
    puts "What index?"
    input = gets.chomp
    return nil if input == "" # Allow user to change their mind
    index = input.to_i

    # [ milk, bread, oranges ]
    # 1 < 4 (3 + 1) => true
    # 2 < 4 (3 + 1) => true
    # 3 < 4 (3 + 1) => true
    # 4 < 3 (3 + 1) => false

    # Index must within range of list
    unless index >= 1 && index < (list.length + 1)
      puts "Invalid index #{index}, try again"
      next
    end

    # Convert to array index
    return index - 1
  end
end

def remove_item(list)
  loop do
    index = ask_for_item_index(list)
    break if index.nil? # User wants out

    # Remove item from list
    removed_item = list.delete_at(index)
    # User entered index that was out of bounds
    if removed_item.nil?
      puts "Invalid index #{index}, try again"
      next # Skip code ahead, restart from loop beginning
    end

    puts "Item at index #{index} removed"
  end
end

def update_item(list)
  puts 'Update items:'

  loop do
    index = ask_for_item_index(list)
    break if index.nil? # User wants out

    updated_item = ask_item_info
    break if updated_item.nil? # User wants out
    
    # Replace item at the requested index
    list[index] = updated_item

    puts ''
  end
end

def main_menu
  list = []

  loop do
    system 'clear'
    puts 'Shopping list'
    puts '' # Divider line
    puts '1. Add items'
    puts '2. Display items'
    puts '3. Remove item'
    puts '4. Update item'
    puts 'x. Exit'

    choice = gets.chomp
    case choice
      when '1'
        system 'clear'
        add_items(list)
      when '2'
        system 'clear'
        display_items(list)

        puts
        puts 'Press to continue'
        gets # User can enter anything to continue
      when '3'
        system 'clear'
        remove_item(list)
      when '4'
        system 'clear'
        update_item(list)
      when 'x'
        break
      else
        puts "Invalid choice: #{choice}"
    end

    sleep 1
  end
end

# Running

main_menu
