class CreateMealPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_plans do |t|
      t.references :meal, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
