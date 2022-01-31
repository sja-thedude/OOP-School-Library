require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Rental do
  context 'When providing a book and a person' do
    book = Book.new('Harry Potter', 'JK Rowling')
    person = Person.new(id: nil, age: 25, name: 'sja', parent_permission: true)
    rental = Rental.new('20/11/2020', book, person)

    it 'should create a rental for person' do
      expect(person.rentals).to include(rental)
    end

    it 'should create a rental for book' do
      expect(book.rentals).to include(rental)
    end
  end
end
