# == Schema Information
#
# Table name: destinations
#
#  id         :integer          not null, primary key
#  latitude   :float
#  longitude  :float
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'httparty'

class Destination < ApplicationRecord
  has_many :selections
  has_many :users, through: :selections

  def distance_to(origin = Origin.first)
    @distance = distance_api_call(origin).parsed_response['rows'][0]['elements'][0]['distance']['text']
  end

  def time_to(origin = Origin.first)
    @duration = distance_api_call(origin).parsed_response['rows'][0]['elements'][0]['duration']['text']
  end

  private

  def distance_api_key
    "AIzaSyDV5pt94Lpyl-ezpkcMbgaug1j19NptwuA"
  end

  def distance_api_call(origin)
    base_url = 'https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial'
    
    origin_coords = "#{origin.latitude},#{origin.longitude}"
    destination_coords = "#{latitude},#{longitude}"

    url = "#{base_url}&origins=#{origin_coords}&destinations=#{destination_coords}&mode=walking&key=#{distance_api_key}"
    response = HTTParty.get(url)
  end

end
