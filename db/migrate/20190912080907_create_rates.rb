class CreateRates < ActiveRecord::Migration[5.2]

    def self.change
      create_table :rates do |t|
        t.belongs_to :rater
        t.belongs_to :rateable, :polymorphic => true
        t.float :stars, :null => false
        t.string :dimension
        t.timestamps
      end
    end

    def self.down
      drop_table :rates
    end

end

# 参考：https://qiita.com/nobu0717/items/b2fb545f35dae9de41d0
# class CreateRates < ActiveRecord::Migration

#   def self.up
#       create_table :rates do |t|
#         t.belongs_to :rater
#         t.belongs_to :rateable, :polymorphic => true
#         t.float :stars, :null => false
#         t.string :dimension
#         t.timestamps
#       end

#       add_index :rates, :rater_id
#       add_index :rates, [:rateable_id, :rateable_type]
#     end

#     def self.down
#       drop_table :rates
#     end

# end