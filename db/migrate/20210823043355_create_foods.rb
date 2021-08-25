class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.decimal :calories
      t.decimal :cholesterol
      t.decimal :dietary_fiber
      t.decimal :potassium
      t.decimal :protein
      t.decimal :saturated_fat
      t.decimal :sodium
      t.decimal :sugars
      t.decimal :total_carbohydrate
      t.decimal :total_fat
      t.string :thumbnail
      t.decimal :serving_qty
      t.decimal :serving_unit
      t.decimal :serving_weight_grams

      t.timestamps
    end
  end
end
