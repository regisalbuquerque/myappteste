Rails.application.routes.draw do
  resources :exemplo2s
  resources :exemplo1s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount AdminEcosystem::Engine, at: "/admin"

  # Defines the root path route ("/")
  # root "articles#index"
end
