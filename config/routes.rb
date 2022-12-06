Rails.application.routes.draw do
  root 'lr9c#index', as: 'home'
  get 'lr9c/index'
  get 'lr9c/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
