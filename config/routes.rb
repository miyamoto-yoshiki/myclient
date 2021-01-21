Rails.application.routes.draw do
  
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to:'tops#index'
  resources :clients
  resources :forms, only:[:new, :create, :edit, :update]
  resources :addinfos, only:[:new, :create, :edit, :update]
  resources :tasks, only:[:index, :new, :create, :destroy]
end
