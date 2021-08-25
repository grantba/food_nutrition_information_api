# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_23_222403) do

  create_table "favorites", force: :cascade do |t|
    t.boolean "favorite", default: true
    t.string "food_category_type"
    t.integer "user_id"
    t.integer "food_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.decimal "calories"
    t.decimal "cholesterol"
    t.decimal "dietary_fiber"
    t.decimal "potassium"
    t.decimal "protein"
    t.decimal "saturated_fat"
    t.decimal "sodium"
    t.decimal "sugars"
    t.decimal "total_carbohydrate"
    t.decimal "total_fat"
    t.string "thumbnail"
    t.decimal "serving_qty"
    t.decimal "serving_unit"
    t.decimal "serving_weight_grams"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "meal_category_type"
    t.text "description"
    t.integer "user_id"
    t.integer "food_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "reason_for_use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
