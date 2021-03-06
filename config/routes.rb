# == Route Map
#
#                 Prefix Verb URI Pattern                   Controller#Action
#      api_v1_user_token POST /api/v1/user_token(.:format)  api/v1/user_token#create
#     api_v1_destination GET  /api/v1/destination(.:format) api/v1/destination#show
# api_v1_selection_index POST /api/v1/selection(.:format)   api/v1/selection#create
#      api_v1_user_index POST /api/v1/user(.:format)        api/v1/user#create
#          api_v1_tokens POST /api/v1/tokens(.:format)      api/v1/tokens#create
#

Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  	  post 'user_token' => 'user_token#create'
  	  
  	  get '/destination', to: 'destination#show'
  	  resources :selection, only: [:create]
  	  resources :user, only: [:create]
  	  resources :tokens, only: [:create]
  	end
  end
end
