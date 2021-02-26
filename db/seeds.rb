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
