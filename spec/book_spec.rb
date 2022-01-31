require_relative '../book'

describe Book do
  context 'It should create book and add rentals' do
    book = Book.new('Secrets of the Millionaire Mind', 'T.Harv Eker')
    it 'should create a new book' do
      expect(book.title).to eq 'Secrets of the Millionaire Mind'
      expect(book.author).to eq 'T.Harv Eker'
    end

    it 'should add a new rentals' do
      book.add_rental(book)
      expect(book.rentals.length).to eq 1
    end

    it 'should return book in string' do
      expect(book.to_s).to eq 'Title: "Secrets of the Millionaire Mind", Author: T.Harv Eker'
    end
  end
end
