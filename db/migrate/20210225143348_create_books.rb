class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image
      t.date :publish_date
      t.string :description
      t.integer :deleted
      t.integer :quantity
      t.references :category, null: false, foreign_key: true
      t.references :publisher, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
