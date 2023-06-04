# Rails.application.routes.draw do
#   get 'exp/index'
#   devise_for :models
#   resources :friends
#   root 'pages#home'
#   get 'about' => 'pages#about'
#   resources :students
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


#   # Defines the root path route ("/")
#   # root "articles#index"
# end


Rails.application.routes.draw do
  get 'exp/index'
  devise_for :models
  resources :friends
  root 'pages#home'
  get 'about' => 'pages#about'
  resources :students

  # Add the destroy action as a member route
  # delete 'students/:id', to: 'students#destroy', as: 'destroy_student'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
