class Api::V1::UserController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
  	params.permit(:name, :email, :password, :password_confirmation)
  end
end
