Rails.application.routes.draw do
  devise_for :users
  
  root 'tweets#index'
#  post '/like/:tweet_id' => 'likes#like', as: 'like'
#  delete '/like/:tweet_id' => 'likes#unlike', as: 'unlike'
  resources :users, only: [:index, :show]

  # tweetsとlikesのネスト構造。投稿に対していいねができるという関係性
  resources :tweets, only: [:index, :create, :show] do
    resources :likes, only: [:create, :destroy]
  end
end