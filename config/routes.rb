Rails.application.routes.draw do

  root 'movies#index'

  resources :movies do
    resources :genres
  end
end
