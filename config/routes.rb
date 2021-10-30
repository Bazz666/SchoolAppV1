Rails.application.routes.draw do

  
  # get 'messages/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {sessions: 'users/sessions' , omniauth_callbacks: 'users/omniauth_callbacks'}
  resources :rooms
  resources :messages
  resources :departaments
  resources :courses

  
  root 'home#index'
  mount ActionCable.server => '/cable'
  
end
