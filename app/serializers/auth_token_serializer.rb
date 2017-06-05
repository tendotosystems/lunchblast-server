class AuthTokenSerializer < ActiveModel::Serializer
  attributes :jwt, :user

  has_one :user

  def jwt
  	object.token
  end

  def user
  	User.find(object.payload[:sub])
  end

end
