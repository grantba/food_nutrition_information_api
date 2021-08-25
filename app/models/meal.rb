class Meal < ApplicationRecord
    belongs_to :user
    belongs_to :food

    validates :meal_category_type, presence: true
end

