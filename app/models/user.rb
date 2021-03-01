class User < ApplicationRecord
  has_many :borrowing_books, dependent: :nullify
  has_secure_password

  validates :name, presence: true
end
