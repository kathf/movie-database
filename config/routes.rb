Rails.application.routes.draw do

  root 'movies#index'

  resources :movies do
    get 'show_genre', on: :member
    get 'show_director', on: :member
    get 'show_cast_member', on: :member

    resources :directors, only: :index
    resources :cast_members, only: :index
  end

  resources :genres, only: [:index, :show]
  resources :cast_members, only: [:index, :show]
  resources :directors, only: [:index, :show]

  get 'search' => 'search#search'
  post 'search' => 'search#search'

end
