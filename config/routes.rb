Rails.application.routes.draw do
  
  root 'posts#index'
  resources :posts, only: [:create]
  post 'tags', to: 'posts#index', as: "tag"
  get 'tags/:tag', to: 'posts#index', as: "tagl"



end
