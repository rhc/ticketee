Rails.application.routes.draw do

  resources :users
  root "projects#index"

  resources :projects do
    resources :tickets
  end

end
