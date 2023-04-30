Rails.application.routes.draw do
  resources :friends
  root 'pages#home'
  get 'about' => 'pages#about'
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  

  # Defines the root path route ("/")
  # root "articles#index"
end
