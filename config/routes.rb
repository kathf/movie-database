Rails.application.routes.draw do

  root 'movies#index'

  resources :movies do
    resources :genres, only: [:index]
    resources :directors
  end

  resources :genres


end
