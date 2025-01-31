require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is not valid without a title' do
    book = Book.new(title: '', author: 'Author Name', price: 19.99, published_date: Date.today)
    expect(book).to_not be_valid
  end

  it 'is not valid without an author' do
    book = Book.new(title: 'Valid Title', author: '', price: 19.99, published_date: Date.today)
    expect(book).to_not be_valid
  end

  it 'is not valid without a price' do
    book = Book.new(title: 'Valid Title', author: 'Author Name', price: nil, published_date: Date.today)
    expect(book).to_not be_valid
  end

  it 'is not valid without a published date' do
    book = Book.new(title: 'Valid Title', author: 'Author Name', price: 19.99, published_date: nil)
    expect(book).to_not be_valid
  end
end