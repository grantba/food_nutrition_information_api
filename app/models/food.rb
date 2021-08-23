class Food < ApplicationRecord
    has_many :users, through: :favorites
end
