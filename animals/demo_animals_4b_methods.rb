melbourne_zoo = [ # Array
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

werribee_zoo = [ # Array
  { # Hash
    :species => 'rhino',
    :count => 22,
    :scientific_name => 'Rhinocerotidae',
    :emoji => '🦏'
  },
  { # Hash
    :species => 'lion',
    :count => 56,
    :scientific_name => 'Panthera leo',
    :emoji => '🦁'
  },
  { # Hash
    :species => 'gorilla',
    :count => 8000,
    :scientific_name => 'Gorilla beringei beringei',
    :emoji => '🦍'
  },
  { # Hash
    :species => 'dolphin',
    :count => 14,
    :scientific_name => 'Delphinus',
    :emoji => '🐬'
  },
  { # Hash
    :species => 'wedged-tailed eagle',
    :count => 2,
    :scientific_name => 'Aquila audax',
    :emoji => '🦅'
  }
]

def display_zoo(zoo)
  # Loop through each record in the zoo
  zoo.each do |record|
    emoji = record[:emoji]
    species = record[:species]
    scientific_name = record[:scientific_name]
    count = record[:count]
    puts "#{emoji} #{species} (#{scientific_name}) x #{count}"
  end
end

puts 'Melbourne Zoo:'
display_zoo(melbourne_zoo)

puts 'Werribee Zoo:'
display_zoo(werribee_zoo)
