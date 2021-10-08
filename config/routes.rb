Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spots, only: [:index, :new, :show, :create]
  resources :skateparks, only: [:index, :new, :show, :create]
end
