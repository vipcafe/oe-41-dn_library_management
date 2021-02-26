class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :deleted, default: 0
      t.string :description

      t.timestamps
    end
  end
end
