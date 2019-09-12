class CreateOverallAverages < ActiveRecord::Migration[5.2]

  def self.up
    create_table :overall_averages do |t|
      t.belongs_to :rateable, :polymorphic => true
      t.float :overall_avg, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :overall_averages
  end
end

# 参考：　https://qiita.com/nobu0717/items/b2fb545f35dae9de41d0
# class CreateOverallAverages < ActiveRecord::Migration

#   def self.up
#     create_table :overall_averages do |t|
#       t.belongs_to :rateable, :polymorphic => true
#       t.float :overall_avg, :null => false
#       t.timestamps
#     end
#   end

#   def self.down
#     drop_table :overall_averages
#   end

# end

