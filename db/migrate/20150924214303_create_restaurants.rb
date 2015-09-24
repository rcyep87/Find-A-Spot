class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_address
      t.string :zipcode
      t.string :restaurant_img

      t.timestamps null: false
    end
  end
end
