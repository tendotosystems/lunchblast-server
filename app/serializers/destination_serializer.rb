class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :time_to, :distance_to
  
end
