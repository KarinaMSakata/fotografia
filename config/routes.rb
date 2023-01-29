Rails.application.routes.draw do
  root to: "home#index"
  resources :summary, only: [:index]
  resources :contacts, only: [:index, :new, :create]
end
