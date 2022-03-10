require './classroom'
require './student'


describe Classroom do
  context 'Testing for Classroom class' do
    student = Student.new("Amadu Kamara", 99)

    classroom = Classroom.new("Accounting")

    it "should return the label for the class" do
      expect(classroom.label).to eq "Accounting"
    end

    it "should validate the student" do
      classroom.add_student(student)
      expect(classroom.students[0]).to eq student
    end
  end
end