zoo = [ # Array
  { # Hash
    :species => 'lion',
    :count => 4
  },
  { # Hash
    :species => 'gorilla',
    :count => 9
  },
  { # Hash
    :species => 'octopus',
    :count => 11
  }
]

# Loop through each record in the zoo
zoo.each do |record|
  print 'Species: '
  puts record[:species]

  print 'Count: '
  puts record[:count]
end