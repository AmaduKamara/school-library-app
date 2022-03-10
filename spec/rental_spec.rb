require './rental'
require './book'
require './student'

describe Rental do
  context "Testing for Rental class" do
    title = "The way of Kings"
    author = "Brandon Sanderson"
    book = Book.new(title, author)
    student = Student.new("Samuel Amkam", 99)
    date = "Mar 10th, 2022"
    rental = Rental.new(date, student, book)

    it "should return the date of rental" do
      expect(rental.date).to eq date
    end

    it "should return the student of the rental" do
      expect(rental.person).to eq student
    end

    it "should return the title of the book" do
      expect(rental.book).to eq book
    end
  end
end