class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :food_category_type
      t.integer :user_id
      t.integer :food_id

      t.timestamps
    end
  end
end
