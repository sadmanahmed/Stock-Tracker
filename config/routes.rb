Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "welcomes#index"
  get 'my_portfolio' => 'users#my_portfolio'
  get 'search_stock' => 'stocks#search'
end
