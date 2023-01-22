Rails.application.routes.draw do
  resources :services
  resources :service_types
  resources :clients
  devise_for :users

  get "/test", to: "application#test"
  get "/client/:client/send", to: "clients#send_mail", as: "client_send_mail"

  root "clients#index"
end
