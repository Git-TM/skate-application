Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/my-tricks", to: "spots#personal"
  resources :spots, only: [:index, :new, :show, :create] do
    resources :videotricks, only: [:new, :create]
  end
  resources :skateshops, only: [:index, :new, :show, :create]
  # resources :videotricks, only: :new
  get 'dashboard', to: 'pages#dashboard'
end
