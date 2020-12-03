Rails.application.routes.draw do
  
  devise_for :users
  root to:'tops#index'
  resources :clients
  resources :forms, only:[:new, :create]
end
