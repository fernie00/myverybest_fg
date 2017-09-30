class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.string :cuisine
      t.string :type_dish
      t.integer :venue_id

      t.timestamps

    end
  end
end
