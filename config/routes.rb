

Rails.application.routes.draw do
  get "home/index"
  devise_for :users
  root "home#index"
  get "help", to: "static_pages#help"
  get "static_pages/home"
  get "static_pages/help"

  resources :users
  resources :microposts
end
