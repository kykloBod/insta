Rails.application.routes.draw do
  post 'profile/:id/follow', to: 'profile#follow', as: 'follow'
  post 'profile/:id/unfollow', to: 'profile#unfollow', as: 'unfollow'


  get 'profile/:id', to: 'profile#show', as: 'profile'
  
  resources :follows
  resources :likes, only: [:create, :destroy]
  devise_for :users
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 
  # Defines the root path route ("/")
 root "posts#index"
end
