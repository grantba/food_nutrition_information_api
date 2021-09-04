class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :meal_category_type
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
