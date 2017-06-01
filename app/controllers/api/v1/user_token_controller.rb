class Api::V1::UserTokenController < Knock::AuthTokenController
  # This is required for namespacing
  def entity_name
    'User'
  end
end
