class Api::V1::UserController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: { status: 201, user: @user }
    else
      render json: { status: 422, errors: @user.errors }
    end
  end

  private

  def user_params
  	params.permit(:name, :email, :password, :password_confirmation)
  end
end
