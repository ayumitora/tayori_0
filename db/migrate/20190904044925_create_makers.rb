class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
      t.string :name, null: false
      t.string :mail, null: false
      t.string :password, null: false
      t.string :site_url
      t.text :overview
      t.string :logo
      t.string :image
      t.string :ivent

      t.timestamps
    end
  end
end
