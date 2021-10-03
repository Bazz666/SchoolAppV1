Rails.application.routes.draw do
  
  resources :assessments
  resources :rooms
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users


  root 'home#index'
  
  end
