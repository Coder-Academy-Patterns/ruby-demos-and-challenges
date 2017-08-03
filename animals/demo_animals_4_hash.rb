zoo = [
  {
    species: 'lion',
    count: 4,
    emoji: '🦁'
  },
  {
    species: 'wolf',
    count: 9,
    emoji: '🐺'
  },
  {
    species: 'rhino',
    count: 3,
    emoji: '🦏'
  },
  {
    species: 'gorilla',
    count: 6,
    emoji: '🦍'
  },
  {
    species: 'octopus',
    count: 3,
    emoji: '🐙'
  }
]

puts 'We have:'

last_index = zoo.length - 1
index = 0
# Loop through each item of the array animals
# Run the code again and again between do/end for each item
zoo.each do |entry|
  species = entry[:species]
  count = entry[:count]
  emoji = entry[:emoji]
  print emoji
  print ' '
  print species
  print ' x '
  print count
  print ', ' unless index == last_index
  index = index + 1
end

puts
