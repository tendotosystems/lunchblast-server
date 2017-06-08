class Api::V1::DestinationController < ApplicationController
  before_action :set_random_destination
  before_action :authenticate_user

  def show
  	render json: @destination
  end

  private

  def set_random_destination
  	@place = random_place
  	@destination = Destination.find_or_create_by(name: @place['name'], latitude: @place['geometry']['location']['lat'], longitude: @place['geometry']['location']['lng'])
  end

  def random_place(radius = 4000, origin = Origin.first)
  	places_api_call(radius, origin).parsed_response['results'][Random.new.rand(0...19)]
  end

  def places_api_call(radius, origin)
    base_url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json?'

    origin_coords = "#{origin.latitude},#{origin.longitude}"

    url = "#{base_url}location=#{origin_coords}&radius=#{radius}&type=restaurant&key=#{places_api_key}"
    response = HTTParty.get(url)
  end

  def places_api_key
    "AIzaSyAMn0KlRDgtBWNraNY9W3vQdALfecvYU9M"
  end
end
