class CreateMakerComments < ActiveRecord::Migration[5.2]
  def change
    create_table :maker_comments do |t|
      t.references :evaluate, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
