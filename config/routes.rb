Rails.application.routes.draw do
  devise_for :users
  get 'exp/index'
  # devise_for :models
  resources :friends
  root 'pages#home'
  get 'about' => 'pages#about'
  resources :students
end
