Rails.application.routes.draw do

  root 'movies#index'

  resources :movies do
    get 'show_genre', on: :member
    get 'show_director', on: :member
    get 'show_cast_member', on: :member

    resources :directors, only: [:index]
    resources :cast_members, only: [:index]
  end

  resources :genres
  resources :cast_members
  resources :directors
end
