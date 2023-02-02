Rails.application.routes.draw do
  root to: "home#index"
  
  resources :nature, only: [:index]
  resources :landscape, only: [:index]
  resources :family, only: [:index]
  resources :couple, only: [:index]
  resources :portraits, only: [:index]  
  resources :summary, only: [:index]
  resources :contacts, only: [:new, :create]

end
