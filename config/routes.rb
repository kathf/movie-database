Rails.application.routes.draw do

  resources :movies
  root 'movies#index'

    resources :movies do
      resources :genres
    end
end
