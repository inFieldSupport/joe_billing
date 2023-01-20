Rails.application.routes.draw do
  resources :services
  resources :service_types
  resources :clients
  devise_for :users

  get "/test", to: "application#test"

  root "clients#index"
end
