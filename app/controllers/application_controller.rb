class ApplicationController < ActionController::API
  include Knock::Authenticable
  before_action :authenticate_guest_or_user

  def authenticate_guest_or_user
  	if current_user
  	  authenticate_user
  	else
  	  current_user = User.find(1)
  	  current_user.authenticate(token: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0OTY0Mjg0MTYsInN1YiI6MSwiZW1haWwiOiJndWVzdEBibGFzdGFwcC5pbyJ9.0K345zG5RR8h3L0Qsv6d6mYj0qNIVWI4n2x1oTTfJQw')
  	end
  end
end
