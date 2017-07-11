require 'date' # Built into Ruby
require 'terminal-table' # Installed gem

def convert_celsius_to_fahrenheit(celsius)
  (celsius * 9 / 5) + 32
end

rows = []
WEEKDAYS = Date::DAYNAMES

WEEKDAYS.each do |weekday|
  puts "What temperature was it on #{weekday} (in Celsius)?"
  input = gets.chomp
  celsius = input.to_f
  fahrenheit = convert_celsius_to_fahrenheit(celsius)
  rows << [weekday, celsius, fahrenheit]
end

puts "Here are the week's temperatures:"
puts Terminal::Table.new headings: ['Weekday', 'Celisus', 'Fahrenheit'], rows: rows
