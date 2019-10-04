class CreateCustomerComments < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_comments do |t|
      t.references :evaluate, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.text :content, null: false

      t.timestamps
    end
  end
end
