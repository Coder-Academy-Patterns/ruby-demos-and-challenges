require 'date' # Allow us to use the Date class

class Student
# - first_name: String
# - last_name: String
# - country_of_birth: String
# - birthday: Date

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @courses = []
  end

  # Hey Ruby, write the def first_name, def first_name=() for us
  attr_accessor :first_name, :last_name, :country_of_birth
  attr_reader :courses # Read-only

  def full_name
    "#{first_name} #{last_name}"
  end

  # Courses may only be changed here
  # `.courses = ?` is not allowed
  def add_course(course)
    @courses << course
  end
end

class Subject
  # Has:
  # - name

  attr_accessor :name, :terms

  def initialize(name, terms)
    @name = name
    @terms = terms
  end
end

class Course
  # Has:
  # - name
  # - course_code
  # - start_date
  # - month_count
  # - end_date

  def initialize()
    @students = []
  end

  attr_accessor :name, :course_code, :start_date, :month_count, :subjects, :students

  def end_date
    start_date = @start_date
    start_date.next_month(@month_count) # Advance by n months
  end

  def enroll_student(student)
    @students << student
    student.add_course(self)
  end
end

# Create courses

fast_track = Course.new
fast_track.name = 'Diploma of IT'
fast_track.course_code = 'FT004'
fast_track.start_date = Date.new(2017, 9, 1)
fast_track.month_count = 6
fast_track.subjects = [Subject.new('Ruby', [1]), Subject.new('Ruby on Rails', [1, 2]), Subject.new('HTML & CSS', [1]), Subject.new('JavaScript', [3]), Subject.new('Node.js', [3]), Subject.new('React.js', [3])]

desserts = Course.new
desserts.name = 'Desserts 101'
desserts.course_code = 'DSRTS101'
desserts.start_date = Date.new(2018, 5, 1)
desserts.month_count = 5

# Create students

mary = Student.new('Mary', 'Poppins')
mary.country_of_birth = 'New Zealand'

don = Student.new('Donald', 'Bradman')
don.country_of_birth = 'Australia'

# Enroll students in courses
fast_track.enroll_student(mary)
fast_track.enroll_student(don)
desserts.enroll_student(mary)


puts "Mary's courses:"
mary.courses.each do |course|
  puts "#{course.name}: #{course.start_date} - #{course.end_date}"
end

puts "Don's courses:"
don.courses.each do |course|
  puts "#{course.name}: #{course.start_date} - #{course.end_date}"
end

puts "Fast Track students:"
fast_track.students.each do |student|
  puts "#{student.full_name}"
end