class AuthTokenSerializer < ActiveModel::Serializer
  attributes :jwt, :user

  def jwt
  	object.token
  end

  def user
  	User.find(object.payload[:id])
  end

end
