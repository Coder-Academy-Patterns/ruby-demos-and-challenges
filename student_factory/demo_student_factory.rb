require 'date'
require 'terminal-table'
require 'colorize'

class Student
  # Has...
  def initialize(name, country_of_birth, birthday)
    @name = name
    @country_of_birth = country_of_birth
    @birthday = birthday
  end

  # Can do...
  def name
    @name
  end

  def country_of_birth
    @country_of_birth
  end

  def birthday
    @birthday
  end
end

students = []
# Add new student
students << Student.new('Mary', 'Australia', Date.new(2000, 5, 1))
students << Student.new('Pablo', 'Mexico', Date.new(1960, 11, 4))
students << Student.new('Sarah', 'New Zealand', Date.new(1982, 3, 27))

# Display students in a table
table = Terminal::Table.new headers: ['Name', 'Country of Birth', 'Birthday'] do |t|
  students.each do |student|
    t << [
      student.name.colorize(:green),
      student.country_of_birth.colorize(:yellow),
      student.birthday.to_s.colorize(:yellow)
    ]
  end
end

puts table