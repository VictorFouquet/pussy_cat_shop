Rails.application.routes.draw do
  get 'carts/show'
  get 'carts/destroy'
  root "items#index"
  resources :items do
  resources :current_orders, only: [:create, :destroy]
  end
  resources :carts


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
