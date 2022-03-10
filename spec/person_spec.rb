require './person'

describe Person do
  context "Testing for Person class" do
    person = Person.new(32, "Amkam")

    it "should return the age of the person" do
      expect(person.age).to eq (32)
    end

    it "should return the name of the person" do
      expect(person.name).to eq "Amkam"
    end
  end
end
