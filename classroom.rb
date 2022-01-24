require_relative 'student'

class Classroom
  attr_accessor :label, :students

  def intitialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @student.push(student) unless @students.include?(student)
    student.classroom = self
  end
end
