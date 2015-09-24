class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :spot_num
      t.boolean :available
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
