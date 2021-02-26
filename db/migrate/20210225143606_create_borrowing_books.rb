class CreateBorrowingBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowing_books do |t|
      t.date :borrowed_date
      t.date :expiration_date
      t.integer :status
      t.integer :deleted, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
