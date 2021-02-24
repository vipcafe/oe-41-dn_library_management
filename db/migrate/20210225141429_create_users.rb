class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :phone
      t.string :id_card
      t.string :remember_digest
      t.integer :deleted, default: 0
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
