require './person'
require './book'

describe Person do
  context 'Testing for Person class' do
    age = 45
    name = 'amkamwebavenger'
    parent_permission = true
    person = Person.new(age, name, parent_permission: parent_permission)

    # person = Person.new(32, 'Amkam')

    date = '10/03/2022'
    book = Book.new('The way of Kings', 'Brandon Sunderson')

    it 'should return the age of the person' do
      expect(person.age).to eq age
    end

    it 'should return the name of the person' do
      expect(person.name).to eq name
    end

    it 'should validate parent permission for person' do
      expect(person.parent_permission).to be parent_permission
    end

    it 'should return capitalized name and trim to 10 length' do
      person.validate_name
      expect(person.name).to eq 'Amkamwebav'
    end

    it 'should validate the rental of the person' do
      person.add_rentals(date, book)
      expect(person.rentals.length).to eq 1
    end

    it 'should return true if the person can use service' do
      expect(person.can_use_services?).to be true
    end
  end
end
