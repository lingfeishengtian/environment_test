require 'rails_helper'

RSpec.describe 'Seeded Data', type: :request do
  it 'ensures there are books in the database (from seeding)' do
    initial_count = Book.count
    expect(initial_count).to be > 0
  end

  it 'ensure all books have "Test" in the title' do
    books = Book.all
    books.each do |book|
      expect(book.title).to include('Test')
    end
  end

  it 'deletes one book and ensures there are 4 books in the database' do
    initial_count = Book.count
    book = Book.first
    book.destroy
    expect(Book.count).to eq(initial_count - 1)
  end
end