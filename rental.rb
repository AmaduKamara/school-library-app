class Rental
  attr_accessor :date

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    person.rentals.push(self)
    book.rentals.push(self)
  end
end