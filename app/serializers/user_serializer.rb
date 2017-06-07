class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :jwt

  def jwt
  	Knock::AuthToken.new(payload: { sub: object.id }).token
  end

end
