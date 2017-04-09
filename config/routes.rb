Rails.application.routes.draw do

  get 'rideshare/index'

  resources :drivers
  resources :passengers
  resources :trips, except: [:new]

  get '/passengers/:passenger_id/trips/new', to: 'trips#new', as: 'new_trip'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
