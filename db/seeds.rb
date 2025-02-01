# The data can be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

if Rails.env.development?
    User.create!(name: 'Dev Admin', email: 'dev_admin@example.com', password: 'password', admin: true)
    User.create!(name: 'Dev User', email: 'dev_user@example.com', password: 'password')
  
    Book.create!(title: 'Dev Book 1', author: 'Dev Author 1', price: 9.99, published_date: '2023-01-01')
    Book.create!(title: 'Dev Book 2', author: 'Dev Author 2', price: 14.99, published_date: '2023-02-01')
  end
  
  if Rails.env.test?
    User.create!(name: 'Test Admin', email: 'test_admin@example.com', password: 'password', admin: true)
    User.create!(name: 'Test User', email: 'test_user@example.com', password: 'password')
  
    Book.create!(title: 'Test Book 1', author: 'Test Author 1', price: 9.99, published_date: '2023-01-01')
    Book.create!(title: 'Test Book 2', author: 'Test Author 2', price: 14.99, published_date: '2023-02-01')
  end
  
  if Rails.env.production?
    User.create!(name: 'Admin', email: 'admin@example.com', password: 'password', admin: true)
    User.create!(name: 'User', email: 'user@example.com', password: 'password')
  
    Book.create!(title: 'Production Book 1', author: 'Author 1', price: 19.99, published_date: '2023-01-01')
    Book.create!(title: 'Production Book 2', author: 'Author 2', price: 24.99, published_date: '2023-02-01')
  end