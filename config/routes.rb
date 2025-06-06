Rails.application.routes.draw do
  get "sessions/new"
  resources :microposts
  resources :account_activations, only: [:edit]
  resources :users
  resources :users do
    member do
      get :microposts
    end
  end
  resources :account_activations, only: [:edit]

  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/signup", to: "users#new"
  get    "/login",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
