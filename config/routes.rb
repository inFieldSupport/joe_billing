Rails.application.routes.draw do
  resources :services
  resources :clients
  devise_for :users

  get "/test", to: "application#test"

  root "application#index"
end
