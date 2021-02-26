50.times do |n|
  id = n+1
  User.create!(name: "User #{n}",
    email: "email#{n}.@gmail.com", birthday: Time.zone.now)
  Author.create!(name: "Mr.#{n}")
  Publisher.create!(name: "Publisher.#{n}")
  Category.create!(name: "Category.#{n}")
  Book.create!(title: "Book number #{n}",
    category_id: id, publisher_id: id,
    author_id: id, publish_date: Time.zone.now,
    quantity: 5)
end

10.times do |n|
  id = n+1
  BorrowingBook.create!(borrowed_date: "2020/02/12",
    expiration_date: "2020/05/12",
    status: 0,
    deleted: 0,
    user_id: id,
    book_id: id)
end

