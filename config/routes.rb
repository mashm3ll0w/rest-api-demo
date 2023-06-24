Rails.application.routes.draw do
  resources :restaurants, only: [:show] do
    resources :menu_items, only: [:show, :index]
  end
  resources :restaurants, only: [:index]

  post "/signup", to: "users#create"
  post "/login", to: "auth#create"
  get "/", to: "restaurants#welcome"
end
