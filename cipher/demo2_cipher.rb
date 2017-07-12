def encode(input)
  output = ''
  input.each_char do |char|
    ascii = char.ord
    ascii += 7
    output << ascii.chr
  end
  output
end

puts 'Please enter some text:'
input = gets.chomp

encoded = encode(input)

puts encoded