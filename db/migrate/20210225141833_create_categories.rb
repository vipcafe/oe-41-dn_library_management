class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
      t.integer :deleted, default: 0

      t.timestamps
    end
  end
end
