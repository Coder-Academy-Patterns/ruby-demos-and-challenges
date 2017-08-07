class Symbol
  def emoji
    case self
      when :wolf
        '🐺'
      when :gorilla
        '🦍'
      else
        '😕'
    end
  end
end

puts :wolf.emoji
puts :gorilla.emoji
puts :owl.emoji
puts :notsure.emoji