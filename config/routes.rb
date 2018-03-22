Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/', to: 'pokemon#capture', as: "capture"
  patch '/damage', to: 'pokemon#damage', as: "damage"
  post '/create', to: 'pokemons#new', as: "create"
end
