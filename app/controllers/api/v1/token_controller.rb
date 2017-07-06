require 'exponent-server-sdk'

class TokensController < ApplicationController
  def create
    # You probably actually want to associate this with a user,
    # otherwise it's not particularly useful
    @token = User.where(token: params[:token][:value]).first

    message = ''
    if @token.present?
      message = 'Welcome back!'
    else
      @token = Token.create(token_params)
      message = 'Welcome to Expo'
    end

    exponent.publish(
      exponentPushToken: @token.value,
      message: message,
      data: {a: 'b'}, # Data is required, pass any arbitrary data to include with the notification
    )

    render json: {success: true}
  end

  private

  def token_params
    params.require(:token).permit(:value)
  end

  def exponent
    @exponent ||= Exponent::Push::Client.new
  end
end