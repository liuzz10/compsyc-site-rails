Rails.application.routes.draw do
  devise_for :users
  resources :videos
  get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  resources :articles do
    resources :comments
  end
end
