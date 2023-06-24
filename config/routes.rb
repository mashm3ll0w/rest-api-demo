Rails.application.routes.draw do
  resources :orders
  resources :menu_items
  resources :restaurants

  post "/signup", to: "users#create"
  post "/login", to: "auth#create"
end
