# The data can be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

if Rails.env.development?
    Book.create!(title: 'Dev Book 1', author: 'Dev Author 1', price: 9.99, published_date: '2023-01-01')
    Book.create!(title: 'Dev Book 2', author: 'Dev Author 2', price: 14.99, published_date: '2023-02-01')
    Book.create!(title: 'Dev Book 3', author: 'Dev Author 3', price: 19.99, published_date: '2023-03-01')
    Book.create!(title: 'Dev Book 4', author: 'Dev Author 4', price: 24.99, published_date: '2023-04-01')
    Book.create!(title: 'Dev Book 5', author: 'Dev Author 5', price: 29.99, published_date: '2023-05-01')
  end
  
if Rails.env.test?
    Book.create!(title: 'Test Book 1', author: 'Test Author 1', price: 9.99, published_date: '2023-01-01')
    Book.create!(title: 'Test Book 2', author: 'Test Author 2', price: 14.99, published_date: '2023-02-01')
    Book.create!(title: 'Test Book 3', author: 'Test Author 3', price: 19.99, published_date: '2023-03-01')
    Book.create!(title: 'Test Book 4', author: 'Test Author 4', price: 24.99, published_date: '2023-04-01')
    Book.create!(title: 'Test Book 5', author: 'Test Author 5', price: 29.99, published_date: '2023-05-01')
end
  
if Rails.env.production?
    Book.create!(title: 'Production Book 1', author: 'Author 1', price: 19.99, published_date: '2023-01-01')
    Book.create!(title: 'Production Book 2', author: 'Author 2', price: 24.99, published_date: '2023-02-01')
    Book.create!(title: 'Production Book 3', author: 'Author 3', price: 29.99, published_date: '2023-03-01')
    Book.create!(title: 'Production Book 4', author: 'Author 4', price: 34.99, published_date: '2023-04-01')
    Book.create!(title: 'Production Book 5', author: 'Author 5', price: 39.99, published_date: '2023-05-01')
end