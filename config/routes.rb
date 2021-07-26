Rails.application.routes.draw do
  devise_for :users
  
  root 'tweets#index'
#  post '/like/:tweet_id' => 'likes#like', as: 'like'
#  delete '/like/:tweet_id' => 'likes#unlike', as: 'unlike'
  resources :users, only: [:index, :show]
  resources :tweets, only: [:index, :create, :show]
end