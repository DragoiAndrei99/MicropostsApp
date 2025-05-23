Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :comments
  resources :notifications


  root "home#index"
  get "help", to: "static_pages#help"
  get "static_pages/home"
  get "static_pages/help"
  resources :microposts
end
