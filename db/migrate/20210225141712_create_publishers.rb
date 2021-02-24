class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :description
      t.integer :deleted, default: 0

      t.timestamps
    end
  end
end
