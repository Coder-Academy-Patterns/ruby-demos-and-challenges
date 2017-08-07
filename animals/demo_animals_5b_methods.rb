class String
  def emoji
    case self
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
      when 'owl'
        '🦉'
      when 'unicorn'
        '🦄'
      else
        '❓'
    end
  end
end

puts 'wolf'.emoji
puts 'gorilla'.emoji
puts 'owl'.emoji
puts 'notsure'.emoji

# 1. Add a .flag_emoji method to String
# 2. Add a method to replace all occurrences of au with its flag emoji