Rails.application.routes.draw do
  
  resources :photos
  root 'pages#home'

  resources :locations
  resources :languages
  resources :profiles
  resources :tours
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get '/profile', to: 'profiles#show'
  get '/mytours', to: 'tours#mytours', as: :mytours



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
