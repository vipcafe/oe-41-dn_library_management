class CreateBookInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :book_interactions do |t|
      t.boolean :like, default: false
      t.boolean :follow, default: false
      t.integer :rating, default: 0
      t.string :comment
      t.integer :deleted, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
