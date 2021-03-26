Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get "/", to: "sessions#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#current_user"
  get "/secrets", to: "secrets#show"
end
