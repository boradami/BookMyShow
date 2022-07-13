Rails.application.routes.draw do

  namespace :admins do
    get 'dashboard/index'
    resources :movies
  end
  namespace :users do
    get 'dashboard/index'
  end
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  root "movies#index"
  resources :movies 
  resources :cinemas
  resources :screens 
  resources :seats 
  resources :shows 
  resources :bookings
end
