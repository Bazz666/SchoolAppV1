Rails.application.routes.draw do

  
  # get 'messages/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    # registrations: 'users/registrations'
  }
  resources :rooms
  resources :messages
  resources :assessments
  resources :departaments
  resources :courses
  
  root 'home#index'
  mount ActionCable.server => '/cable'
  
end
