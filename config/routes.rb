Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :boards
    resources :columns
    resources :cards
    resources :teams
  end

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
