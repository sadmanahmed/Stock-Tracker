Rails.application.routes.draw do

  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root "welcomes#index"
  get 'my_portfolio' => 'users#my_portfolio'
  get 'search_stock' => 'stocks#search'
  get 'my_friends' => 'users#my_friends'
  get 'search_friend' => 'users#search'
  resources :friendships, only: [:create, :destroy]
end
