class CreateEvaluates < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluates do |t|
      t.integer :product_id
      t.integer :customer_id
      t.float :rate
      t.string :image
      t.text :content

      t.timestamps
    end
    add_index :evaluates, :product_id
    add_index :evaluates, :customer_id
    add_index :evaluates, [:product_id, :customer_id], unique: true
  end
end
