Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post "videotricks", to: "videotricks#create"
  resources :spots, only: [:index, :new, :show, :create] do
    resources :videotricks, only: :create
  end
  resources :skateshops, only: [:index, :new, :show, :create]
  # resources :videotricks, only: [:index :create]
end
