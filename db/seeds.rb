# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# users = User.create([{username: "grantb", password: "grantb", reason_for_use: "Be mindful of what I eat."}, 
#     {username: "gaving", password: "gaving", reason_for_use: "Stay healthy"}, 
#     {username: "BingBing", password: "BingBing", reason_for_use: ""}, 
#     {username: "Winston", password: "Winston", reason_for_use: ""}])

# foods = Food.create([{food_name: "hot dog", calories: 120.0, cholesterol: 20.0, dietary_fiber: 2.0, potassium: 12.0, protein: 8.0, saturated_fat: 12.5, sodium: 25.0, sugars: 10.0, total_carbohydrate: 2.0, total_fat: 25.0, thumbnail: "https://tse1.mm.bing.net/th?id=OIP.sYaqfFkBTAeKCNiUmrRvcgHaJQ&pid=Api&P=0&w=300&h=300", serving_qty: 1.0, serving_unit: 1.0, serving_weight_grams: 2.0},
#     {food_name: "hamburger", calories: 160.0, cholesterol: 25.1, dietary_fiber: 3.0, potassium: 3.0, protein: 9.6, saturated_fat: 15.0, sodium: 52.3, sugars: 8.0, total_carbohydrate: 2.0, total_fat: 26.3, thumbnail: "https://cdn-image.foodandwine.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/1559057296/Burger-National-Hamburger-Day-FT-Blog0619.jpg?itok=p_c0wvCU", serving_qty: 1.0, serving_unit: 1.0, serving_weight_grams: 3.5},
#     {food_name: "macaroni and cheese", calories: 320.0, cholesterol: 6.0, dietary_fiber: 16.5, potassium: 4.0, protein: 3.2, saturated_fat: 11.1, sodium: 11.0, sugars: 3.2, total_carbohydrate: 60.2, total_fat: 14.8, thumbnail: "https://turntable.kagiso.io/images/Mac_n_Cheese_istock.width-800.jpg", serving_qty: 1.0, serving_unit: 1.0, serving_weight_grams: 12.3},
#     {food_name: "ice cream", calories: 111.1, cholesterol: 0.3, dietary_fiber: 0.8, potassium: 9.5, protein: 3.1, saturated_fat: 17.2, sodium: 0.65, sugars: 28.0, total_carbohydrate: 26.3, total_fat: 13.9, thumbnail: "https://tse4.mm.bing.net/th?id=OIP.6EA2Jj--ZgfnKFGbypiQjQHaE8&pid=Api&P=0&w=236&h=158", serving_qty: 1.0, serving_unit: 1.0, serving_weight_grams: 2.0}])

# more_food = Food.create([{food_name: "chicken and dumplings", calories: 185.0, cholesterol: 16.0, dietary_fiber: 6.75, potassium: 5.0, protein: 13.2, saturated_fat: 21.3, sodium: 19.75, sugars: 0.25, total_carbohydrate: 73.2, total_fat: 22.48, thumbnail: "https://tse2.mm.bing.net/th?id=OIP.YJKMfc_biUJQ-areFcxAygHaHa&pid=Api&P=0&w=300&h=300", serving_qty: 1.0, serving_unit: 1.0, serving_weight_grams: 3.0},
#     {food_name: "gummy bears", calories: 150.0, cholesterol: 0.3, dietary_fiber: 0.0, potassium: 0.0, protein: 2.3, saturated_fat: 0.56, sodium: 3.4, sugars: 49.7, total_carbohydrate: 39.8, total_fat: 0.3, thumbnail: "https://tse4.mm.bing.net/th?id=OIP.iIDDjtouqifK1AQYhnS3TQHaEK&pid=Api&P=0&w=280&h=158", serving_qty: 1.0, serving_unit: 1.0, serving_weight_grams: 1.8}])

# favorites = Favorite.create([{favorite: true, food_category_type: "junk food", user_id: 2, food_id: 4},
#     {favorite: true, food_category_type: "meat", user_id: 4, food_id: 1},
#     {favorite: true, food_category_type: "comfort foods", user_id: 1, food_id: 3},
#     {favorite: true, food_category_type: "yummy", user_id: 3, food_id: 2}])

# meals = Meal.create([{meal_category_type: "dessert", description: "", user_id: 2, food_id: 4},
#     {meal_category_type: "anytime", description: "only with lots of cheesy goodness", user_id: 1, food_id: 3},
#     {meal_category_type: "breakfast, lunch, or dinner", description: "I'll pretty much eat anything anytime of day!", user_id: 3, food_id: 2},
#     {meal_category_type: "snack", description: "one of my favorites", user_id: 4, food_id: 1}])

# more_favorites = Favorite.create([{favorite: true, food_category_type: "", user_id: 2, food_id: 3},
#     {favorite: true, food_category_type: "anytime", user_id: 3, food_id: 1},
#     {favorite: true, food_category_type: "comfort foods", user_id: 1, food_id: 5},
#     {favorite: true, food_category_type: "junk food", user_id: 2, food_id: 6},
#     {favorite: true, food_category_type: "junk food", user_id: 1, food_id: 6}])

# more_meals = Meal.create([{meal_category_type: "anytime", description: "", user_id: 3, food_id: 1},
#     {meal_category_type: "favorites", description: "good to eat all the time", user_id: 1, food_id: 4},
#     {meal_category_type: "favorites", description: "good to eat all the time", user_id: 1, food_id: 6},
#     {meal_category_type: "snack food", description: "", user_id: 2, food_id: 6},
#     {meal_category_type: "dinner", description: "not healthy but deliscious", user_id: 2, food_id: 5}])