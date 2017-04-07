Rails.application.routes.draw do

  resources :drivers
  resources :passengers
  resources :trips, except: [:new, :create]

  # post '/trips/', to: 'trips#create'

  get '/passengers/:passenger_id/trips/new', to: 'trips#new', as: 'new_trip'
  post '/passengers/:passenger_id/trips', to: 'trips#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
