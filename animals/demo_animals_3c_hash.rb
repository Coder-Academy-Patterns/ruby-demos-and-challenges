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
  print record[:species]
  print ' ('
  print record[:scientific_name]
  print ')'
  print ' x '
  print record[:count]
  puts '' # New line
end