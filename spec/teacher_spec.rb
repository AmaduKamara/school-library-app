require './teacher'

describe Teacher do
  context "Test for Teacher class" do
    age = 32
    name = "Shaun Pelling"
    specialization = "Web Development"

    teacher = Teacher.new(name, age, specialization)

    it "should return the name of the teacher" do
      expect(teacher.name).to eq name
    end

    it "should validate the age of the teacher" do
      expect(teacher.age).to eq age
    end

    it "should return the specialization of the teacher" do
      expect(teacher.specialization).to eq specialization
    end
  end
end
