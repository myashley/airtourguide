Rails.application.routes.draw do

  #root 'pages#home'
  root 'pages#index'
  
  resources :bookings do
    member do
      # /booking/1/charge
      post 'charge' 
    end
  end

  resources :photos
  resources :locations
  resources :profiles
  resources :tours
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get '/profile', to: 'profiles#show'
  get '/mytours', to: 'tours#mytours', as: :mytours
  get '/mybookings', to: 'bookings#mybookings', as: :mybookings
  get '/contact', to: 'pages#contact'
  post '/contact', to: 'pages#contact_email'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
