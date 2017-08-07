melbourne_zoo = [ # Array
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

werribee_zoo = [ # Array
  { # Hash
    :species => 'rhino',
    :count => 22,
    :scientific_name => 'Rhinocerotidae'
  },
  { # Hash
    :species => 'lion',
    :count => 56,
    :scientific_name => 'Panthera leo'
  },
  { # Hash
    :species => 'gorilla',
    :count => 8000,
    :scientific_name => 'Gorilla beringei beringei'
  },
  { # Hash
    :species => 'dolphin',
    :count => 14,
    :scientific_name => 'Delphinus'
  },
  { # Hash
    :species => 'wedged-tailed eagle',
    :count => 2,
    :scientific_name => 'Aquila audax'
  }
]

def emoji_for_species(species)
  case species
    when 'wolf'
      '🐺'
    when 'gorilla'
      '🦍'
    when 'lion'
      '🦁'
    when 'rhino'
      '🦏'
    when 'dolphin'
      '🐬'
    when 'wedged-tailed eagle'
      '🦅'
    when 'octopus'
      '🐙'
    when 'unicorn'
      '🦄'
    else
      '❓'
  end
end

def display_zoo(zoo)
  # Loop through each record in the zoo
  zoo.each do |record|
    species = record[:species]
    emoji = emoji_for_species(species)
    scientific_name = record[:scientific_name]
    count = record[:count]
    puts "#{emoji} #{species} (#{scientific_name}) x #{count}"
  end
end

puts 'Melbourne Zoo:'
display_zoo(melbourne_zoo)

puts 'Werribee Zoo:'
display_zoo(werribee_zoo)
