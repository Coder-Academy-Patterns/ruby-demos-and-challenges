require 'date' # Allow us to use the Date class

class Student
# - first_name: String
# - last_name: String
# - country_of_birth: String
# - birthday: Date

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # Hey Ruby, write the def first_name, def first_name=() for us
  attr_accessor :first_name, :last_name, :country_of_birth, :course
end

class Course
  # Has
  # - name
  # - course_code
  # - start_date
  # - month_count
  # - end_date

  attr_accessor :name, :course_code, :start_date, :month_count

  def end_date
    start_date = @start_date
    start_date.next_month(@month_count) # Advance by n months
  end
end

fast_track = Course.new
fast_track.name = 'Diploma of IT'
fast_track.course_code = 'FT004'
fast_track.start_date = Date.new(2017, 9, 1)
fast_track.month_count = 6

mary = Student.new('Mary', 'Poppins')
puts mary.first_name
puts mary.last_name
puts mary.country_of_birth.inspect
mary.country_of_birth = 'New Zealand'
mary.course = fast_track
puts "Mary's course ends on:"
marys_course = mary.course
puts marys_course.end_date

don = Student.new('Donald', 'Bradman')
puts don.first_name
puts don.last_name
puts don.country_of_birth.inspect
don.country_of_birth = 'Australia'
don.course = fast_track
puts "Don's course ends on:"
dons_course = don.course
puts dons_course.end_date

mary_and_don_have_same_course = mary.course == don.course
if mary_and_don_have_same_course
  puts "Same"
else
  puts "Different"
end
