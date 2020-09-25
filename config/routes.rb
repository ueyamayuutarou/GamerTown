Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :users
  resources :posts
  get 'home/about'
  get "users/:id" => "users#show"
  get "posts/:id" => "posts#show"
end
