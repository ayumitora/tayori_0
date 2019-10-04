class AddMakerToMakerComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :maker_comments, :maker, foreign_key: true
  end
end
