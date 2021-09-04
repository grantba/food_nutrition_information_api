class Meal < ApplicationRecord
    belongs_to :user
    has_many :mealplans
    has_many :foods, through: :mealplans

    validates :meal_category_type, presence: true
end