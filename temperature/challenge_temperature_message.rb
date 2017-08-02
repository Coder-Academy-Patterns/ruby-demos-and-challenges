require 'colorize'
# [:black, :light_black, :red, :light_red, :green, :light_green, :yellow, :light_yellow, :blue, :light_blue, :magenta, :light_magenta, :cyan, :light_cyan, :white, :light_white, :default]

puts 'Enter today\'s temperature:'
current_temp = gets.to_f

if current_temp > 30
  puts "It is pretty hot".red
elsif current_temp > 20
  puts "It is pleasant".yellow
elsif current_temp > 10
  puts "It is a bit chilly".cyan
else
  puts "It is really freezing cold".blue
end


fahrenheit = current_temp * (9.0 / 5.0) + 32.0

puts 'Fahrenheit: '
puts fahrenheit.round(2)
