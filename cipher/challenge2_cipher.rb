class Cipher
  def initialize
    @output = ''
  end

  def output
    @output
  end

  def encode_char(char)
    raise 'Subclasses of Cipher must implement encode_char method'
  end

  def << (input)
    input.each_char do |char|
      @output << encode_char(char)
    end
  end
end

class CaesarCipher < Cipher
  LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a

  def initialize(shift)
    super() # Must call with () - https://stackoverflow.com/questions/7689699/ruby-inheritance-super-initialize-getting-wrong-number-of-arguments#comment26365536_7689828
    @shift = shift
  end

  def encode_char(char)
    if index = LETTERS.index(char)
      index = (index + @shift) % LETTERS.length
      LETTERS[index]
    else
      char
    end
  end
end

puts 'Please enter some text:'
input = gets.chomp

cipher = CaesarCipher.new(7)
cipher << input
encoded = cipher.output

puts encoded