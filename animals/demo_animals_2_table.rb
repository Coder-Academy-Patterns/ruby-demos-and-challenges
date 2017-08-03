require 'terminal-table'

animals = ['dog', 'cat', 'moose', 'ostrich', 'emu', 'iguana', 'penguin', 'elephant', 'eagle']

rows = []
# Loop through each item of the array animals
# Run the code again and again between do/end for each item
index = 0
animals.each do |animal|
  # Add row for this animal with its index and name
  rows << [index, animal]
  # Increment index by 1
  index = index + 1
end

table = Terminal::Table.new :rows => rows
puts table
