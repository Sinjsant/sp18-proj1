Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/', to: 'pokemon#capture', as: "capture"
  patch '/damage', to: 'pokemon#damage', as: "damage"
  get '/new', to: 'pokemons#new', as: "new"
  post '/pokemons', to: 'pokemons#create'
  # as: "create"
  # resources :pokemons, only: [:new,:create]

end
