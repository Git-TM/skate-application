Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spots, only: [:index, :new, :show, :create] do
    resources :videotricks, only: [:index, :new, :show, :create]
  end
  resources :skateshops, only: [:index, :new, :show, :create]
end
