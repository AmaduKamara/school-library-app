require './student'

describe Student do
  context 'Test for Student class' do
    student = Student.new("Samuel Amkam", 99)

    it 'should return the age of the student' do
      expect(student.name).to eq "Samuel Amkam"
    end

    it 'should return the age of the student' do
      expect(student.age).to eq 99
    end
  end
end
