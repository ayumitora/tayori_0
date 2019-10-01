class CreateAverageCaches < ActiveRecord::Migration[5.2]

  def self.up
    create_table :average_caches do |t|
      t.belongs_to :rater
      t.belongs_to :rateable, :polymorphic => true
      t.float :avg, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :average_caches
  end

end

# 参考： https://qiita.com/nobu0717/items/b2fb545f35dae9de41d0
# class CreateAverageCaches < ActiveRecord::Migration

#   def self.up
#     create_table :average_caches do |t|
#       t.belongs_to :rater
#       t.belongs_to :rateable, :polymorphic => true
#       t.float :avg, :null => false
#       t.timestamps
#     end
#   end

#   def self.down
#     drop_table :average_caches
#   end

# end

