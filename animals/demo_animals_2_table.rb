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

# animal_0 = animals[0]
# print animal_0

# print ', '

# animal_1 = animals[1]
# print animal_1

# print ', '

# animal_2 = animals[2]
# print animal_2
