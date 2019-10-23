class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      # t.references :maker, foreign_key: true
      t.string :name, null: false
      t.string :price
      t.string :image
      t.string :season
      t.text :overview

      t.timestamps
    end
  end
end
