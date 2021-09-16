class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      errors = @user.errors.map {|message| message.message}.join("\n")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity       
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      errors = @user.errors.map {|message| message.message}.join("\n")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity     
    end
  end

  # DELETE /users/1
  def destroy
    if @user && @user.destroy
      render json: {status: :ok}
    else
      render json: {status: :unprocessable_entity}
    end 
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :reason_for_use)
    end
end
