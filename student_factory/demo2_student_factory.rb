require 'date'
require 'terminal-table'
require 'colorize'

class Student # class: template
  # Has...
  # New instances of that class
  # Objects
  def initialize(first_name, last_name, country_of_birth, birthday)
    @first_name = first_name
    @last_name = last_name
    @country_of_birth = country_of_birth
    @birthday = birthday
  end

  attr_accessor :country_of_birth, :birthday

  # Reader first_name (getter)
  def first_name
    @first_name
  end
  # Writer first_name (setter)
  def first_name=(new_first_name)
    @first_name = new_first_name
  end

  # Reader last_name
  def last_name
    @last_name
  end
  # Writer last_name
  def last_name=(new_last_name)
    @last_name = new_last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name=(new_full_name)
    name_pieces = new_full_name.split(' ')
    @first_name = name_pieces.first #...
    @last_name = name_pieces.last #...
  end
end

students = []
# Add new student
mary = Student.new('Mary', 'Poppins', 'Australia', Date.new(2000, 5, 1))
puts "Mary’s name:"
puts mary.full_name
puts "Mary’s surname:"
puts mary.last_name
puts "Mary’s country:"
puts mary.country_of_birth

mary.full_name = 'Jane Frances Fonda'
puts "Mary’s new name:"
puts mary.full_name

# mary.first_name = 'Susan'
# mary.country_of_birth = 'New Zealand'
# mary.birthday = Date.new(1880, 5, 1)

sleep 1

mary.full_name


# students << mary
# students << Student.new('Pablo', 'Mexico', Date.new(1960, 11, 4))
# students << Student.new('Sarah', 'New Zealand', Date.new(1982, 3, 27))

# # Display students in a table
# table = Terminal::Table.new headers: ['Name', 'Country of Birth', 'Birthday'] do |t|
#   students.each do |student|
#     t << [
#       student.name.colorize(:green),
#       student.country_of_birth.colorize(:yellow),
#       student.birthday.to_s.colorize(:yellow)
#     ]
#   end
# end

# puts table