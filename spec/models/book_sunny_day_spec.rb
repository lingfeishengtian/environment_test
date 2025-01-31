require 'rails_helper'

RSpec.describe Book, type: :model do
it 'is valid with valid attributes' do
    book = Book.new(title: 'Valid Title', author: 'Author Name', price: 19.99, published_date: Date.today)
    expect(book).to be_valid
  end
end