class User < ApplicationRecord
  has_many :borrowing_books, dependent: :nullify
end
