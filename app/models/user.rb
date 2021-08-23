class User < ApplicationRecord
    has_many :foods, through: :favorites
end
