Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#new"
  resources :users, only: [:new, :create, :show, :destroy]
  get 'sign_in', to: "sessions#new"
  post 'sign_in', to: "sessions#create"

  resources :events
end
