COUNTRY_CODES_TO_EMOJI = {
  'au' => '🇦🇺',
  'fr' => '🇫🇷',
  'us' => '🇺🇸'
}

class String
  def flag_emoji
    COUNTRY_CODES_TO_EMOJI.fetch(self, '❓')
  end

  def replace_countries_with_flags
    self.gsub(/\b[a-z][a-z]\b/i) do |input|
      COUNTRY_CODES_TO_EMOJI[input] || input ## Fallback to original text if it isn't a country code, e.g. 'so'
      # COUNTRY_CODES_TO_EMOJI.fetch(input, input)
    end
  end
end

puts 'au'.flag_emoji
puts 'fr'.flag_emoji
puts 'us'.flag_emoji
puts 'de'.flag_emoji

puts 'Welcome to au, have you been to fr?'.replace_countries_with_flags