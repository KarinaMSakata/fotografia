Rails.application.routes.draw do
  root to: "home#index"
  resources :summary, only: [:index]
end
