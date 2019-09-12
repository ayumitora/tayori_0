class AddAuthorRefToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :maker, foreign_key: true
  end
end
