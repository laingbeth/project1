class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :price
      t.string :category
      t.string :comments
      t.string :best_dish
      t.string :location
      t.string :description
      t.string :website
      t.string :recommender
      t.string :image_name

      t.timestamps null: false
    end
  end
end
