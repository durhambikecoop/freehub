Rails.application.routes.draw do
  resources :services
  resources :visits
  resources :people
  devise_for :users
  resources :organizations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
