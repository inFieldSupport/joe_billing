Rails.application.routes.draw do
  devise_for :users

  get "/test", to: "application#test"

  root "application#index"
end
