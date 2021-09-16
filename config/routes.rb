Rails.application.routes.draw do
  resources :meals, only: [:index, :show, :create, :update, :destroy]
  resources :favorites, only: [:index, :create, :update, :destroy]
  resources :users, only: [:create, :update, :destroy]
  resources :auth, only: [:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
