class CreateDishTags < ActiveRecord::Migration[5.0]
    def change
        create_table :dish_tags do |t|
            t.integer :dish_id
            t.integer :tag_id
        end
    end
end