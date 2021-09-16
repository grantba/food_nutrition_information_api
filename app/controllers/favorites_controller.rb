class FavoritesController < ApplicationController
  before_action :authorized
  before_action :set_favorite, only: [:update, :destroy]

  # GET /favorites
  def index
    favorites = Favorite.where(user_id: @user.id)
    if @user && favorites
      render json: favorites.to_json(include: :food)
    else
      render json: {errors: 'Failed to load favorites.'}
    end
  end

  # POST /favorites
  def create
    food = get_food(favorite_params.except(:user_id, :food_category_type))
    favorite = food.favorites.build(food_category_type: favorite_params[:food_category_type], user_id: favorite_params[:user_id])
    if food && @user.id == favorite.user_id && favorite.save
      render json: favorite.to_json(include: :food), status: :created
    else
      render json: {errors: 'Failed to create favorite.'}
    end
  end

  # PATCH/PUT /favorites/1
  def update
    food = get_food(favorite_params.except(:favorite_id, :food_id, :user_id, :food_category_type))
    if food && @user.id == favorite_params[:user_id] && @favorite.update(food_category_type: favorite_params[:food_category_type], user_id: favorite_params[:user_id], food_id: food.id)
      render json: @favorite.to_json(include: :food)
    else
      render json: {errors: 'Failed to update favorite.'}
    end
  end

  # DELETE /favorites/1
  def destroy
    if @user.id == @favorite.user_id && @favorite.destroy
      render json: {status: :ok}
    else
      render json: {status: :unprocessable_entity}
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_params
      params.require(:favorite).permit(:food_category_type, :user_id, :food_id, :food_name, :calories, :total_fat, :saturated_fat, :cholesterol, :sodium, :total_carbohydrate, :dietary_fiber, :sugars, :protein, :potassium, :thumbnail, :serving_qty, :serving_unit, :serving_weight_grams)
    end

    def get_food(food_att)
      Food.find_or_create_by(food_att)
    end
end
