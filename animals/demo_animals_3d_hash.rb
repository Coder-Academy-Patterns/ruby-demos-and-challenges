zoo = [ # Array
  { # Hash
    :species => 'lion',
    :count => 4,
    :scientific_name => 'Panthera leo'
  },
  { # Hash
    :species => 'gorilla',
    :count => 9,
    :scientific_name => 'Gorilla beringei beringei'
  },
  { # Hash
    :species => 'octopus',
    :count => 11,
    :scientific_name => 'Octopoda'
  }
]

# Loop through each record in the zoo
zoo.each do |record|
  species = record[:species]
  scientific_name = record[:scientific_name]
  count = record[:count]
  puts "#{species} (#{scientific_name}) x #{count}"
end