Rails.application.routes.draw do
  resources :clients
  devise_for :users

  get "/test", to: "application#test"

  root "application#index"
end
