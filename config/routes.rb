Rails.application.routes.draw do
  root "home#index"

  get "/products", to: "home#index"
  get "/products/:id", to: "home#show"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
