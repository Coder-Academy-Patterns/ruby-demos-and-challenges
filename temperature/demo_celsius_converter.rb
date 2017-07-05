def convert_celsius_to_fahrenheit(celsius)
  (celsius * 9 / 5) + 32
end

puts 'Enter temperature in Celsius: '
input = gets.chomp
celsius = input.to_f

fahrenheit = convert_celsius_to_fahrenheit(celsius)

puts "#{ celsius } degrees celsius in fahrenheit is #{ fahrenheit }"
