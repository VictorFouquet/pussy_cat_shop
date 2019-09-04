Rails.application.routes.draw do
  get 'profils/index'

  root "items#index"
  resources :items do
    resources :current_orders, only: [:create, :destroy]
    resources :avatars, only: [:create]
  end
  resources :carts
  resources :sales, only: [:create]
  resources :charges
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
