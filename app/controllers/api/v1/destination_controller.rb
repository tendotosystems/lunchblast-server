class Api::V1::DestinationController < ApplicationController
  before_action :set_random_destination
  before_action :authenticate_user

  def show
  	render json: @destination
  end

  private

  def set_random_destination
  	@destination = Destination.find(Random.new.rand(1...Destination.count))
  end
end
