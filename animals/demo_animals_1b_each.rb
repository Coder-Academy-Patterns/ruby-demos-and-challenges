require 'pry'

animals = ['dog', 'cat', 'moose', 'ostrich', 'emu', 'iguana', 'penguin', 'elephant', 'eagle']

# Loop through each item of the array animals
# Run the code again and again between do/end for each item
last_index = animals.length - 1

index = 0
# Loop
animals.each do |animal|
  print index
  print ' '
  print animal.upcase
  binding.pry # Pause
  print ', ' unless index == last_index
  index = index + 1
end

# Polite apps end with a new line
puts ''

# animal_0 = animals[0]
# print animal_0

# print ', '

# animal_1 = animals[1]
# print animal_1

# print ', '

# animal_2 = animals[2]
# print animal_2
