class CreateCustomerComments < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_comments do |t|
      t.references :evaluate, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
