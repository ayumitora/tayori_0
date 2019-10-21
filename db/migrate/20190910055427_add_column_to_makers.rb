class AddColumnToMakers < ActiveRecord::Migration[5.2]
  def change
    add_column :makers, :name, :string, null: false, default: ""
    add_column :makers, :site_url, :string, default: "http://example.com"
    add_column :makers, :overview, :text
    add_column :makers, :logo, :string
    add_column :makers, :image, :string
    add_column :makers, :ivent, :string
  end
end
