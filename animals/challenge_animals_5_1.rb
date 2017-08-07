class String
  def flag_emoji
    case self
      when 'au'
        '🇦🇺'
      when 'fr'
        '🇫🇷'
      when 'us'
        '🇺🇸'
      else
        '❓'
    end
  end
end

puts 'au'.flag_emoji
puts 'fr'.flag_emoji
puts 'us'.flag_emoji
puts 'de'.flag_emoji