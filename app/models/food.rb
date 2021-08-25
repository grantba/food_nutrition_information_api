class Food < ApplicationRecord
    has_many :favorites
    has_many :meals
    has_many :users, through: :favorites
    has_many :users, through: :meals
end
