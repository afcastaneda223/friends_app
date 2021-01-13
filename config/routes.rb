Rails.application.routes.draw do
  resources :friends_lists
  root 'home#index'
  get 'home/about'
end
