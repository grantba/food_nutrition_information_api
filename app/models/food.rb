class Food < ApplicationRecord
    has_many :favorites
    has_many :mealplans
    has_many :meals, through: :mealplans
end
