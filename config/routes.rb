Rails.application.routes.draw do
  devise_for :users

  resources :organizations, except: %i[show destroy update edit]
  # :organization_id/:controller routes
  # org ids are slugs and must be 3-5 numerical, lowercase, underscore, or dash characters
  resources :organizations, only: %i[show destroy update edit], path: '', id: /[a-z0-9_-]{3,5}/ do
    resources :people, :services, :visits, module: :organizations, id: /\d+/
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
