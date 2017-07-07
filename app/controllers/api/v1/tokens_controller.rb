require 'exponent-server-sdk'

class Api::V1::TokensController < ApplicationController
  def create
    # You probably actually want to associate this with a user,
    # otherwise it's not particularly useful
    @user = User.find(params[:token][:user_id])

    message = ''
    if @user.push_token.present?
      @token = @user.push_token
      message = 'Welcome back!'
    else
      @user.update_attribute(:push_token, params[:token][:push_token])
      @token = @user.push_token
      message = 'Welcome to Expo'
    end

    exponent.publish(
      exponentPushToken: @token,
      message: message,
      data: {a: 'Welcome to Lunch Blast'}, # Data is required, pass any arbitrary data to include with the notification
    )

    render json: {success: true}
  end

  private

  def token_params
    params.permit(:push_token, :user_id)
  end

  def exponent
    @exponent ||= Exponent::Push::Client.new
  end
end