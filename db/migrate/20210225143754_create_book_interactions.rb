class CreateBookInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :book_interactions do |t|
      t.boolean :like
      t.boolean :follow
      t.integer :rating
      t.string :comment
      t.integer :deleted
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
