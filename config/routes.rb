Rails.application.routes.draw do
  
  devise_for :users
  root to:'tops#index'
  resources :clients, only:[:index, :new, :create, :show, :edit, :update]
end
