Rails.application.routes.draw do
  
  resources :users
  root 'listings#index'
  resources :listings, only: [:create]
  post 'tags', to: 'listings#index', as: "tag"
  get 'tags/:tag', to: 'listings#index', as: "tagl"



end
