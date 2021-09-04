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

ActiveRecord::Schema.define(version: 2021_09_03_025522) do

  create_table "favorites", force: :cascade do |t|
    t.string "food_category_type"
    t.integer "user_id"
    t.integer "food_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.float "calories"
    t.float "cholesterol"
    t.float "dietary_fiber"
    t.float "potassium"
    t.float "protein"
    t.float "saturated_fat"
    t.float "sodium"
    t.float "sugars"
    t.float "total_carbohydrate"
    t.float "total_fat"
    t.string "thumbnail"
    t.float "serving_qty"
    t.string "serving_unit"
    t.float "serving_weight_grams"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_plans", force: :cascade do |t|
    t.integer "meal_id", null: false
    t.integer "food_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_meal_plans_on_food_id"
    t.index ["meal_id"], name: "index_meal_plans_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "meal_category_type"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "reason_for_use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "meal_plans", "foods"
  add_foreign_key "meal_plans", "meals"
end
