class UsersController < ApplicationController
  skip_before_action :authorized, only: :create

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token({user_id: user.id})
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
    else
      render json: {error: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
