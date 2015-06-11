Rails.application.routes.draw do

  root 'movies#index'

  resources :movies do
    resources :genres
    resources :directors
  end
end
