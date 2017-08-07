def emoji_for_species(string)
  case string
    when 'wolf'
      '🐺'
    when 'gorilla'
      '🦍'
    when 'rhino'
      '🦏'
    when 'owl'
      '🦉'
    when 'unicorn'
      '🦄'
    when 'horse'
      '🐴'
    # when 'wedge-tailed eagle'
    when /\beagle/ # eagle
      '🦅'
    when 'dog', 'beagle'
      '🐕'
    else
      '❓'
  end
end

puts emoji_for_species('owl')
puts emoji_for_species('gorilla')
puts emoji_for_species('rhino')
puts emoji_for_species('bunyip')

puts 'Please enter a species:'
species = gets.chomp.downcase.strip
puts emoji_for_species(species)
# 1. Add more emoji
# 2. Handle if the user enters Owl or OWL
# 3. Handle if the user enter '      OWL      '
# 4. Handle if the user enter '      wedge-tailed eagle      '
# 5. Handle if the user enters rhino or rhinoceros