Rails.application.routes.draw do
  resources :restaurants, only: [:show] do
    resources :menus, only: [:show, :index]
  end
  resources :restaurants, only: [:index]
  resources :orders, only: [:index, :show, :update]

  post "/restaurants/:restaurant_id/menus/:id", to: "menus#create"
  post "/signup", to: "users#create"
  post "/login", to: "auth#create"
  get "/", to: "restaurants#welcome"
end
