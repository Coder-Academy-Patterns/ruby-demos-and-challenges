zoo = [ # Array
  { # Hash
    :species => 'lion',
    :count => 4,
    :scientific_name => 'Panthera leo',
    :emoji => '🦁'
  },
  { # Hash
    :species => 'gorilla',
    :count => 9,
    :scientific_name => 'Gorilla beringei beringei',
    :emoji => '🦍'
  },
  { # Hash
    :species => 'octopus',
    :count => 11,
    :scientific_name => 'Octopoda',
    :emoji => '🐙'
  }
]

# Loop through each record in the zoo
zoo.each do |record|
  emoji = record[:emoji]
  species = record[:species]
  scientific_name = record[:scientific_name]
  count = record[:count]
  puts "#{emoji} #{species} (#{scientific_name}) x #{count}"
end