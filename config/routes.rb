Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'flights#index'

  resources :flights
  resources :bookings, only: [:new, :create]
  resources :passengers, only: [:new, :create]
end
