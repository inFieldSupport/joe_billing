Rails.application.routes.draw do
  resources :services
  resources :service_types
  resources :clients
  devise_for :users

  get "/test", to: "application#test", as: "test"
  get "/client/:client/send", to: "clients#send_mail", as: "client_send_mail"

  post "/service/:id/change_rate", to: "service#change_rate", as: "change_rate"
  post "/service/:id/change_active_users", to: "service#change_active_users", as: "change_active_users"

  root "clients#index"
end
