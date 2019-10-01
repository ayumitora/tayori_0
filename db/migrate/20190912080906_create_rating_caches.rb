class CreateRatingCaches < ActiveRecord::Migration[5.2]

  def self.up
      create_table :rating_caches do |t|
        t.belongs_to :cacheable, :polymorphic => true
        t.float :avg, :null => false
        t.integer :qty, :null => false
        t.string :dimension
        t.timestamps
      end
    end

    def self.down
      drop_table :rating_caches
    end

end
# https://qiita.com/nobu0717/items/b2fb545f35dae9de41d0 を参考に変更
# class CreateRatingCaches < ActiveRecord::Migration

#   def self.up
#       create_table :rating_caches do |t|
#         t.belongs_to :cacheable, :polymorphic => true
#         t.float :avg, :null => false
#         t.integer :qty, :null => false
#         t.string :dimension
#         t.timestamps
#       end

#       add_index :rating_caches, [:cacheable_id, :cacheable_type]
#     end

#     def self.down
#       drop_table :rating_caches
#     end

# end