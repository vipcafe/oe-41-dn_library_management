class Book < ApplicationRecord
  belongs_to :category
  belongs_to :publisher
  belongs_to :author
  delegate :name, to: :author, prefix: true
  delegate :name, to: :category, prefix: :category

  has_many :borrowing_books, dependent: :nullify

  scope :search_by_book_title,
        ->(term){where("title LIKE ?", "%#{term}%")}

  scope :search_by_author_name,
        ->(term){joins(:author).where(" authors.name LIKE ?", "%#{term}%")}

  scope :search_by_category_name,
        ->(term){joins(:category).where("categories.name LIKE ?", "%#{term}%")}
  scope :order_by_title, ->{(order :title).includes(:author, :category)}
end
