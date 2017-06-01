class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :user_ids
end
