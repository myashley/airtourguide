Rails.application.routes.draw do
  resources :tours
  root 'pages#home'

  resources :locations
  resources :languages
  resources :profiles
  devise_for :users

  get '/profile', to: 'profiles#show'
  #get '/profile/:id', to: 'profiles#edit'
  #get '/profile', to: 'profiles#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
