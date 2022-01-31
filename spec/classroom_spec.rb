require_relative '../classroom'
require_relative('../student')

describe Classroom do
  context 'It should create book and add rentals' do
    classroom = Classroom.new
    classroom.intitialize('Microverse')
    student = Student.new(age: 27, classroom: nil, name: 'Surbhi', parent_permission: true)
    it 'should create a classroom' do
      expect(classroom.label).to eq 'Microverse'
    end

    it 'should add new student to classroom' do
      classroom.add_student(student)
      expect(student.classroom.label).to eq 'Microverse'
    end
  end
end
