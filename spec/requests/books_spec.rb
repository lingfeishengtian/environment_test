require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "POST /books" do
    context "with valid parameters" do
      it "creates a new book and shows a success flash notice" do
        post books_path, params: { book: { title: "Valid Book Title", author: "Author Name", price: 19.99, published_date: "2025-01-25" } }
        expect(response).to redirect_to(book_path(Book.last))
        follow_redirect!
        expect(response.body).to include("Book was successfully created.")
      end
    end

    context "with invalid parameters" do
      it "does not create a book and shows an error flash notice" do
        post books_path, params: { book: { title: "", author: "Author Name", price: 19.99, published_date: "2025-01-25" } }
        expect(response.body).to include("prohibited this book from being saved")
      end
    end
  end
end