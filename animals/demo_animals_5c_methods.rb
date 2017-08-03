class Symbol
  def emoji
    case self
      when :wolf
        '🐺'
      else
        '😕'
    end
  end
end

puts :wolf.emoji
puts :notsure.emoji