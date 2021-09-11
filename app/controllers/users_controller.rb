class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :authorized, only: [:update, :destroy]

  # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { message: "Failed to create user account." }, status: :unauthorized
    end
  end

  # def profile
  #   render json: {user: UserSerializer.new(current_user)}, status: accepted
  # end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { message: "Failed to update user account." }, status: :unauthorized
    end
  end

  # DELETE /users/1
  def destroy
    if @user && @user.destroy
      render json: { message: "You successfully deleted your account." }, status: :accepted
    else
      render json: { message: "Failed to delete user account." }, status: :unauthorized
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :reason_for_use)
    end
end
