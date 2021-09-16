class mealsController < ApplicationController
  before_action :authorized
  before_action :set_meal, only: [:show, :update, :destroy]

  # GET /meals
  def index
    meals = Meal.where(user_id: @user.id)
    if @user && meals
      render json: meals.to_json
    else
      render json: {errors: 'Failed to load meals.'}
    end
  end


  # GET /meals/1
  def show
    meal = MealPlan.where(meal_id: @meal.id)
    binding.pry
    if @meal && meal && @meal.user_id == @user.id
      render json: meal.to_json(include: :food)
    else
      render json: {errors: 'Failed to load meal.'}
    end
  end

  # # POST /meals
  # def create
  #   meal = Meal.new(meal_category_type: meal_params[:meal_category_type], description: meal_params[:description], user_id: meal_params[:user_id])
  #   # meal = meal_plan
  #   binding.pry
  #   if @user.id == meal.user_id && meal.save
  #     render json: meal.to_json(include: :food), status: :created
  #   else
  #     render json: {errors: 'Failed to create meal.'}
  #   end
  # end

  # # PATCH/PUT /meals/1
  # def update
  #   binding.pry
  #   if @user.id == meal_params[:user_id] && @meal.update(meal_category_type: meal_params[:meal_category_type], description: meal_params[:description], user_id: meal_params[:user_id])
  #     render json: @meal.to_json(include: :food)
  #   else
  #     render json: {errors: 'Failed to update meal.'}
  #   end
  # end

  # # DELETE /meals/1
  # def destroy
  #   binding.pry
  #   if @user.id == @meal.user_id && @meal.destroy
  #     render json: {status: :ok}
  #   else
  #     render json: {status: :unprocessable_entity}
  #   end 
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meal_params
      params.require(:meal).permit(:meal_category_type, :description, :user_id, :food_id)
    end
end
