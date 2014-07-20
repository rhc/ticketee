Rails.application.routes.draw do

  namespace :admin do
      resources :users
  end

  resources :users
  root "projects#index"

  resources :projects do
    resources :tickets
  end

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"


end
