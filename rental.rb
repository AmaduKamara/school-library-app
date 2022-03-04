class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date
    @person = person
    person.rentals.push(self)
    @book = book
    book.rentals.push(self)
  end
end
