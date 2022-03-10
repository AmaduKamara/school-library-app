require './book.rb'

describe Book do
  context "Testing for book class" do
    book = Book.new("The Way of Kings", "Brandon Sanderson")

    it "Should return the author of the book" do
      expect(book.author).to eq "Brandon Sanderson"
    end

    it "Should return the title of the book" do
      expect(book.title).to eq "The Way of Kings"
    end
  end
end