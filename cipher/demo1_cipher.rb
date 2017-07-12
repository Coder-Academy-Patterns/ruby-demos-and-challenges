def encode(input)
  input.reverse
end

puts 'Please enter some text:'
input = gets.chomp

encoded = encode(input)

puts encoded