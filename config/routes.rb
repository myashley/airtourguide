Rails.application.routes.draw do
  get 'pages/home'

  resources :locations
  resources :languages
  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
