class CreateStardewObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :stardew_objects do |t|
      t.integer :object_number
      t.string :name
      t.integer :price
      t.integer :edibility
      t.string :category_type
      t.string :display_name
      t.string :description
      t.string :food_or_drink
      t.string :misc

      t.timestamps
    end
  end
end
