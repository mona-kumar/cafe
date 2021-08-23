Rails.application.routes.draw do
  get "/",to:"home#index"
  get "/signin", to:"sessions#new",as: :new_sessions
  post "/signin", to:"sessions#create", as: :sessions
  delete "/signout", to:"sessions#destroy", as: :destroy_sessions
  resources:menu_items
  resources:users
  resources:item_manager
  resources:customer_menu_items
  resources:order_items
  resources:cart
  resources:orders
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
