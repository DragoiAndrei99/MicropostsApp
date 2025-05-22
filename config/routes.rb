

Rails.application.routes.draw do
  root "static_pages#home"
  get "help", to: "static_pages#help"
  get "static_pages/home"
  get "static_pages/help"

  resources :users
  resources :microposts
end
