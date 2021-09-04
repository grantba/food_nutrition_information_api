class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
      @user = User.find_by(username: auth_params[:username])
      #User#authenticate comes from BCrypt
      if @user && @user.authenticate(auth_params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
  
    private
  
    def auth_params
      # params { user: {username: 'Chandler Bing', password: 'hi' } }
      params.require(:user).permit(:username, :password)
    end

end