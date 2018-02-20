Rails.application.routes.draw do
  
  resources :users, only: [:new]
  root 'listings#index'
  resources :listings, only: [:create]
  post 'tags', to: 'listings#index', as: "tag"
  get 'tags/:tag', to: 'listings#index', as: "tagl"


match 'auth/:provider/callback', to: 'sessions#create_from_omniauth', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]
match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]



end
