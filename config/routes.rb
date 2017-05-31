# == Route Map
#
#     Prefix Verb URI Pattern           Controller#Action
# user_token POST /user_token(.:format) user_token#create
#

Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
