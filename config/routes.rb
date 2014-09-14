Rails.application.routes.draw do
  
  root 'posts#index'
  resources :posts, only: [:create]
  get 'tags/:tag', to: 'posts#index', as: "tag"
end
