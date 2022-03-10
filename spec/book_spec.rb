require './book'

describe Book do
  context 'Testing for book class' do
    book = Book.new('The Way of Kings', 'Brandon Sanderson')

    it 'should return the author of the book' do
      expect(book.author).to eq 'Brandon Sanderson'
    end

    it 'should return the title of the book' do
      expect(book.title).to eq 'The Way of Kings'
    end
  end
end
