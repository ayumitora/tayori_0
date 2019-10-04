class CreateMakerComments < ActiveRecord::Migration[5.2]
  def change
    create_table :maker_comments do |t|
      t.references :evaluate, null: false, foreign_key: true
      t.references :maker, null: false, foreign_key: true

      t.text :content, null: false

      t.timestamps
    end
  end
end
