class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :update, :destroy]

  # GET /favorites
  def index
    favorites = Favorite.order(:food_name)
    render json: favorites.to_json(include: :food)
  end

  # GET /favorites/1
  def show
    render json: @favorite.to_json(include: :food)
  end

  # POST /favorites
  def create
    @food = get_food(favorite_params.except(:user_id, :food_category_type))
    @favorite = @food.favorites.build(food_category_type: favorite_params[:food_category_type], user_id: favorite_params[:user_id])
    if @favorite.save
      render json: @favorite.to_json(include: :food), status: :created, location: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  def update
    @food = get_food(favorite_params.except(:favorite_id, :food_id, :user_id, :food_category_type))
    if @food && @favorite.update(food_category_type: favorite_params[:food_category_type], user_id: favorite_params[:user_id], food_id: @food.id)
      render json: @favorite.to_json(include: :food)
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  def destroy
    if @favorite.destroy
      render json: {status: :ok}
    else
      render json: { message: "There was an issue deleting your favorite. Please try again." }, status: :unprocessable_entity
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
