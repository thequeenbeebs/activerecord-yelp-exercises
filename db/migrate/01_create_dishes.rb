class CreateDishes < ActiveRecord::Migration[5.0]
    def change
        create_table :dishes do |t|
            t.string :name
            t.integer :restaurant_id
        end
    end
end