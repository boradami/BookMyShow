Rails.application.routes.draw do

  namespace :admins do
    get 'dashboard/index'
  end
  namespace :users do
    get 'dashboard/index'
  end
  devise_for :admins
  devise_for :users
  
  root "cities#index"
  resources :pages
  resources :cities
  resources :cinemas
  resources :movies 
  resources :screens 
  resources :seats 
  resources :shows 
  resources :bookings do
    member do
      get :generate_ticket
    end
  end
end
