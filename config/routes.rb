Rails.application.routes.draw do
  devise_for :users
  resources :friends_lists
  root 'home#index'
  get 'home/about'
end
