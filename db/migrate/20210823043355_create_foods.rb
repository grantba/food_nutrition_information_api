class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.float :calories
      t.float :cholesterol
      t.float :dietary_fiber
      t.float :potassium
      t.float :protein
      t.float :saturated_fat
      t.float :sodium
      t.float :sugars
      t.float :total_carbohydrate
      t.float :total_fat
      t.string :thumbnail
      t.float :serving_qty
      t.float :serving_unit
      t.float :serving_weight_grams

      t.timestamps
    end
  end
end
