class ApplicationController < ActionController::API
  include Knock::Authenticable

  # disabled for now until default user is set
  # before_action :authenticate_user

end
