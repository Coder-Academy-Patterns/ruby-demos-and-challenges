require 'terminal-table'
require 'colorize'

animals = ['dog', 'cat', 'moose', 'ostrich', 'emu', 'iguana', 'penguin', 'elephant', 'eagle']

rows = []
# Loop through each item of the array animals
# Run the code again and again between do/end for each item
index = 1
animals.each do |animal|
  if index.even? # If index is even
    # Add row for this animal with its index and name
    rows << [index.to_s.cyan, animal.cyan]
  else
    rows << [index.to_s.yellow, animal.yellow]
  end
  # Increment index by 1
  index = index + 1
end

table = Terminal::Table.new :headings => ['Index', 'Name'], :rows => rows
puts table
