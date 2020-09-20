Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :users
  resources :posts
  get 'home/about'
  get "users/:id" => "users#show"
  get "posts/:id" => "posts#show"
  # resources :users,only: [:show,:index,:edit,:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root  'top'
end
