class Classroom
  attr_reader :subject, :capacity, :students

  def initialize (subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def yell_at_students
    upcase_students = []
    @students.each do |student|
      upcase_students << student.upcase
    end
    upcase_students
  end

  def over_capacity
    student_counter = 0
    @students.each do |student|
      student_counter += 1
    end
    if @capacity >= student_counter
      capacity_test = false
    elsif @capacity < student_counter
      capacity_test = true
    end
    capacity_test
  end
end
