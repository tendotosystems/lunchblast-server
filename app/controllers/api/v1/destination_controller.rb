class Api::V1::DestinationController < ApplicationController
  before_action :set_destination

  def show
  	render json: @destination
  end

  private

  def set_destination
  	@destination = Destination.find(params[:id])
  end
end
