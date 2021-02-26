class Book < ApplicationRecord
  belongs_to :category
  belongs_to :publisher
  belongs_to :author

  has_many :borrowing_books, dependent: :nullify
end
