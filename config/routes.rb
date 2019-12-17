Rails.application.routes.draw do
  resources :sightings
  get '/birds' => 'birds#index'
  get '/birds/:id', to: 'birds#show'

  get '/sightings/:id', to: 'sightings#show'
end