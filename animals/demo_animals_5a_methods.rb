def emoji(string)
  case string
    when 'wolf'
      '🐺'
    when 'gorilla'
      '🦍'
    else
      '😕'
  end
end

puts emoji('wolf')
puts emoji('gorilla')
puts emoji('owl')
puts emoji('notsure')