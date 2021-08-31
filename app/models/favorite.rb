class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :food

    def self.create_favorite(params, foodId)
        food_category_type = params[:category_type]
        food_id = foodId
        user_id = params[:user_id]
        Favorite.new(favorite: true, food_category_type: food_category_type, food_id: food_id, user_id: user_id)
    end

end
