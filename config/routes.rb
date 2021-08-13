Rails.application.routes.draw do
  get "/",to:"home#index"
  get "/signin", to:"sessions#new",as: :sessions
  
  resources:users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
