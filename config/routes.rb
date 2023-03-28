Rails.application.routes.draw do
  #users
  #resources :users
  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  #recipes
  resources :recipes, only: [:index, :create]
  
  #sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
