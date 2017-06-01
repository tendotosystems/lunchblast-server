class Api::V1::DestinationController < ApplicationController
  before_action :set_destination

  def show
  	render json: {
  	  latitude: @destination.latitude,
      longitude: @destination.longitude,
      name: @destination.name
  	}
  end

  private

  def set_destination
  	@destination = Destination.find(params[:id])
  end
end
